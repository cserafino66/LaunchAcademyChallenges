import React from 'react';

const AnswerButton = props => {
  let clickHandler = () => {
    props.selectedAnswerFunction(props.data.id)
  }

  return(
    <div>
      <h5 onClick={clickHandler}>{props.data.body}</h5>
    </div>
  )
}

export default AnswerButton;
