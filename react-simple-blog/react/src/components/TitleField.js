import React from 'react';

const TitleField = (props) => {
  return (
    <label onChange={props.handleTitleChange}>{props.label}
      <input
        name={props.name}
        type='text'
        value={props.content}
      />
    </label>
  );
}

export default TitleField;
