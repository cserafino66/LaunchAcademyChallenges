import React from 'react';
import Picture from './Picture';


const List = props => {
  let bodies = [];
  for(let body of props.celestialBodies) {
    bodies.push(<li>{body}</li>)
  }

  return (
    <div className='box list'>
      <h1>Here Is a List</h1>
      <ul>
        {bodies}
      </ul>
    </div>
  )
}

export default List;
