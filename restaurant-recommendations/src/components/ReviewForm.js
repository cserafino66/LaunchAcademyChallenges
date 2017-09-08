import React from 'react'

class ReviewForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      name: '',
      rating: null,
      description: ''
    }

    this.handleNameChange = this.handleNameChange.bind(this)
    this.handleRatingChange = this.handleRatingChange.bind(this)
    this.handleDescriptionChange = this.handleDescriptionChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleNameChange(event) {
    let newName = event.target.value
    this.setState({ name: newName })
  }

  handleRatingChange(event) {
    let newRating = event.target.value
    this.setState({ rating: newRating})
  }

  handleDescriptionChange(event) {
    let newDescription = event.target.value
    this.setState({ description: newDescription })
  }

  handleSubmit(event) {
    event.preventDefault();
    let formPayload = {
      restaurant_id: this.props.restaurant_id,
      name: this.state.name,
      rating: this.state.rating,
      content: this.state.description
    }
    debugger
    this.props.addReview(formPayload)
  }

  render() {
    return(
      <form>
        <label htmlFor="name">Your Name:</label>
        <input type="text" name="name" onChange={this.handleNameChange}/>

        <label htmlFor="rating">Rating:</label>
        <input type="select" name="rating" onChange={this.handleRatingChange}/>

        <label htmlFor="Description">Description</label>
        <input type="text" name="description" onChange={this.handleDescriptionChange}/>

        <input type="submit" onClick={this.handleSubmit}/>
      </form>
    )
  }
}

export default ReviewForm;
