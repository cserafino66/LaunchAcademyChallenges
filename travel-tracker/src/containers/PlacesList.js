import React from 'react';

const PlacesList = (props) => {
  let eventHandler = () => {
    props.checkedPlaceFunction(props.id);
  }
  return(
    <li onClick={eventHandler} className={props.check}>{props.name}</li>
  )
}

export default PlacesList;
