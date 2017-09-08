import React from 'react';
import ReactDOM from 'react-dom';
import List from './List';

let url = 'https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png';

const Picture = props => {
  let celestialBodies = ['Asteroids', 'Comets', 'Moon', 'Planets', 'Stars', 'Sun'];


  return (
    <div className='box picture'>
      <h1>Look at This Picture</h1>
      <img alt='Clever EEs' src={url}/>
      <List celestialBodies={celestialBodies}/>
    </div>
  )
}

export default Picture;
