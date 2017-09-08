import React from 'react';
import AnswerButton from '../components/AnswerButton'

class App extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      selectedAnswerId: null
    }
    this.selectedAnswerFunction = this.selectedAnswerFunction.bind(this)
  }

  selectedAnswerFunction(id) {
    if (this.state.selectedAnswerId === null) {
      this.setState({selectedAnswerId: id});
    } else if (this.state.selectedAnswerId === id) {
      this.setState({selectedAnswerId: null});
    } else {
      this.setState({selectedAnswerId: id})
    }
  }

  render(){
    let hiddenText;
    let answers = this.props.data.answers.map((answer) => {
      if (this.state.selectedAnswerId === 1) {
        hiddenText = "Correct!"
      } else if (this.state.selectedAnswerId === null) {
        hiddenText = ""
      } else {
        hiddenText = "Incorrect!"
      }
      return(
        <AnswerButton
        data={answer}
        key={answer.id}
        id={answer.id}
        selectedAnswerFunction={this.selectedAnswerFunction}
        />
      )

    })
    return(
      <div>
        <h1>What is the best JavaScript Framework?</h1>
        {answers}
        <h6>{hiddenText}</h6>
      </div>
    )
  }
}

export default App
