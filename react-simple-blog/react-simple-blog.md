You will be building a simple blog in React!

## Setup

From your challenges directory, run the following:

```no-highlight
$ et get react-simple-blog
$ cd react-simple-blog
$ bundle install
$ bundle exec ruby server.rb
```

Then in another terminal tab run:

```no-highlight
$ npm install
$ npm start
```

Visit <http://localhost:4567> in your browser. You should see a page with a form, and no articles yet on the page. There should be no errors in your JavaScript console. You should plan to follow the instructions on the page as you work through this system check.

**Reminder:** Please be sure to do a **hard refresh** in your browser for changes to take effect (**Shift + Click Refresh** or **Command + Shift + R**). We aren't using `webpack-dev-server` the way we do in other assignments.

## Meets Expectations Requirements

The application right now is a work-in-progress. Here's what we need to do:

1. We've created a component `ArticlesIndexContainer` that displays when we visit the root path. The `ArticlesIndexContainer` is meant to display all of the articles currently in our application, but it's not loading anything as of yet. Modify the component so that it fetches data from `/api/v1/articles` when the component mounts to display the articles on the page.

2. We've created a component `ArticleShowContainer` that grabs a `data-id` attribute from the `show` div in `show.erb`. This allows us to pass information from our Ruby/HTML to our React application, in this case, the article's id. The id is accessible to you in your React code using the `articleId` variable you see in this container. This container should display the article with a matching `id`. Write a new `fetch` call in the `ArticleShowContainer` to `/api/v1/articles/:id` in `componentDidMount` to display only the specific article's data on the page. NOTE: When you go to this page there will be a back button that doesn't work. This is for exceeds expectations! Do not worry about making it work for meets!

3. You'll notice in the ArticleFormContainer, your fields have already been made for you. Now, you need to define some handler functions in the ArticleFormContainer that will track the user's input into the `TitleField` and `BodyField`. Make sure you pass them all down the right places to make them work. NOTE: You do not need to make the clear button work for meets expectations!

4. The `ArticleIndexContainer` renders an `ArticleFormContainer`, and passes an `addNewArticle` function down as props to `ArticleFormContainer`. The `formPayload` (i.e. the body of the POST request you're about to make) should have the format of `{title: <User's Submitted Title>, body: <User's Submitted Body>}`. *Make sure your `formPayload` matches this format*. Define the `addNewArticle` function on the `ArticleIndexContainer` that will `POST` this data to `/api/v1/articles`. This post request needs to be defined on the `ArticleIndexContainer` so it can set the state of the articles using what is returned by the API's post method. The `addNewArticle` will need to take in some arguments and you will need to define a new `handleSubmit` on the `ArticleFormContainer` (remember you don't want to hand functions down as props with the parenthesis at the end or you will enter infinite loop doom).

**In order to meet expectations, your application must do the following:**

* When a user fills out the new article form and clicks submit, a POST request should be made to `/api/v1/articles`. A correctly-formatted POST request will result in the article being added to the `articles.json` file.

* The newly-submitted article should appear on the index page. This is the page at the root path (`/`) that renders `ArticlesIndexContainer`

* When a user navigates to the show page (`ArticleShowContainer`), they should only see information for that article.

These are the only things you have to get working to meet expectations!

## Exceeds Expectations Requirements

This application works, but it's still untested and does a full page reload when navigating between components. For exceeds expectations:

* Implement React Router to navigate between components. You should alter the `server.rb` file to send all `GET` requests that aren't to API endpoints to `home.erb`, and have your ReactDOM `render` all components on that page.

* Use Router's `Link` component to make each article link on the `ArticlesIndexContainer` go to the show page.

* Make the Back button on the `ArticleShow` component go to the previous page in `browserHistory`.

* Write tests for the `ArticleTile` and `ArticleShow` presentational components to make sure they are displaying the HTML and text that we expect. These have been started for you.

* Write a function to clear the new article form fields when the Clear button is clicked.

* There also must be validations that check that both the body and the title fields have been filled out by the user. When a user does not fill in all the required fields, errors pertaining to which fields are missing should appear on the page. So trying to update an article with empty info should cause errors to appear on the page and the user should remain on the edit form page.
