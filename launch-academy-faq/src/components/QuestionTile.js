import React from 'react';

const QuestionTile = props => {
  // debugger
    let eventHandler = () => {
    props.selectedQuestionFunction(props.data.id);
  }

  return(
    <div>
      <i onClick={eventHandler} className={props.icon} ></i>
      <div>
        <h3>{props.data.question}</h3>
        <p className={props.hiddenText}>{props.data.answer}</p>
      </div>
    </div>
  )
}


export default QuestionTile;
