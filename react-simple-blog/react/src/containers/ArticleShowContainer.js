import React, { Component } from 'react';
import ArticleShow from '../components/ArticleShow';

class ArticleShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      article: {}
    }
  }


  componentDidMount() {
    let articleId = document.getElementById('show').getAttribute('data-id');
    fetch(`/api/v1/articles/${articleId}`)
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

        this.setState({ article: body });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    return(
      <ArticleShow
        id={this.state.article.id}
        title={this.state.article.title}
        body={this.state.article.body}
       />
    )
  }
}

export default ArticleShowContainer;
