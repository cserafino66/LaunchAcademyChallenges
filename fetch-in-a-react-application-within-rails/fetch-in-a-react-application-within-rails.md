## Learning Objectives
* Learn how to fetch data from a Rails API endpoint via Fetch API in React.

## Following Along
The repository we are working with can be retrieved using et. To get
quickly set up, do the following:

* Et get the repository, install the necessary gems, set up
    the database, and run the rails server.

    ```sh
    $ et get fetch-in-a-react-application-within-rails
    $ cd fetch-in-a-react-application-within-rails
    $ bundle install
    $ bundle exec rake db:create
    $ bundle exec rake db:migrate
    $ bundle exec rails server -b 0.0.0.0
    ```

* In another tab, install the necessary NPM packages and run your Webpack Dev Server

    ```sh
    $ npm install
    $ npm start
    ```

## Fetch calls in React

We have written the following `Fortune` component:

```javascript
import React, { Component } from 'react';

class Fortune extends Component {
  constructor(props) {
    super(props);
    this.state = { fortune: '' };
  }

  render() {
    return (
      <h1>Your Fortune: {this.state.fortune}</h1>
    );
  }
}

export default Fortune;
```

Our Rails application displays this component at our root index. If we visit the
page, we see the following:

![AJAX in a React application within Rails 1][ajax-in-a-react-application-within-rails-1]

We have also built the following API endpoint in our Rails applicaition that
returns a random fortune:

```ruby
class Api::FortunesController < ApiController
  def show
    respond_to do |format|
      format.json do
        render json: { fortune: fortunes.sample }
      end
    end
  end

  private

  def fortunes
    [
      "Expect a letter from a friend who will ask a favor of you.",
      "You are taking yourself far too seriously.",
      "Bank error in your favor.  Collect $200.",
      "Your true value depends entirely on what you are compared with.",
      "Don't let your mind wander -- it's too little to be let out alone.",
      "You will be imprisoned for contributing your time and skill to a bank robbery.",
      "Whenever you find that you are on the side of the majority, it is time to reform.",
      "You are confused; but this is your normal state.",
      "Don't read everything you believe.",
      "Keep it short for pithy sake.",
      "Abandon the search for Truth; settle for a good fantasy.",
      "Try to relax and enjoy the crisis.",
      "You will be awarded some great honor.",
      "Tuesday After Lunch is the cosmic time of the week.",
      "Blow it out your ear.",
      "You definitely intend to start living sometime soon.",
      "Don't tell any big lies today.  Small ones can be just as effective.",
      "Don't worry, be happy.",
      "Another good night not to sleep in a eucalyptus tree."
    ]
  end
end
```

We can test the API endpoint by running:

```sh
$ curl localhost:3000/api/fortune
```

And we get back a JSON formatted response of a random fortune:

```sh
{"fortune":"Whenever you find that you are on the side of the majority, it is time to reform."}
```

We would like our component to display a random fortune from the API. We can
accomplish this by calling fetch once the component mounts and setting the new
state with the returned fortune if the fetch response is successful. We update
our component as such:

```javascript
import React, { Component } from 'react';

class Fortune extends Component {
  constructor(props) {
    super(props);
    this.state = { fortune: '' };
  }

  componentDidMount() {
    fetch('/api/fortune.json')
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ fortune: body.fortune });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    return (
      <h1>Your Fortune: {this.state.fortune}</h1>
    );
  }
}

export default Fortune;

```

If we visit our root path again, we now see the following:

![AJAX in a React application within Rails 2][ajax-in-a-react-application-within-rails-2]

You may however get a different fortune due to the fortunes now appearing randomly.

We use the lifecycle method `componentDidMount` to check if the Fortune component appears on the page, even if it set to have an empty fortune due to the initial state of the Fortune Component. Once the component mounts, the lifecycle method runs, calling fetch to our rails endpoint which will retrieve a random fortune as JSON. We then parse that JSON, use setState to set the state of our Fortune component to the newly retrieved fortune from our api, and finally trigger a re-render so that our newly updated Fortune Component displays on the page with the retrieved fortune!

## Summary
In a React application set up within a Rails application, we are able to fetch
data from a Rails API endpoint for the React application. We accomplish this
through the use of Fetch API and React component lifecycle methods. With such
knowledge, we are now able to leverage both the power of a Rails back-end and
the responsiveness of a React front-end in our website!

[ajax-in-a-react-application-within-rails-repository]: https://github.com/LaunchAcademy/ajax-in-a-react-application-within-rails
[ajax-in-a-react-application-within-rails-1]: https://s3.amazonaws.com/horizon-production/images/ajax-in-a-react-application-within-rails-1.png
[ajax-in-a-react-application-within-rails-2]: https://s3.amazonaws.com/horizon-production/images/ajax-in-a-react-application-within-rails-2.png
