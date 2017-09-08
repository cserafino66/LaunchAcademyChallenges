import React from 'react';

const BodyField = (props) => {
  return (
    <label onChange={props.handleBodyChange}>{props.label}
      <textarea
        name={props.name}
        type='text'
        value={props.content}
      />
    </label>
  );
}

export default BodyField;
