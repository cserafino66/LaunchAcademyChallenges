import React from 'react';

const TextField = props => {
  let onChangeHandler = event => {
    props.handleInput(event, props.name)
  }

  return(
    <label>{props.label}:
      <input
      name={props.name}
      type='text'
      onChange={onChangeHandler}
      value={props.content}
      />
    </label>
  )
}

export default TextField;
