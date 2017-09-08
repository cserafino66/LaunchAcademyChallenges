import React from 'react';
import Picture from './Picture';
import Numbers from './Numbers';
import List from './List';

const Wrapper = props => {
  return (
    <div className='box wrapper'>
      <h1>{props.header}</h1>
      <Numbers />
      <p>{props.paragraph}</p>
      <Picture />
    </div>
  )
}

export default Wrapper;
