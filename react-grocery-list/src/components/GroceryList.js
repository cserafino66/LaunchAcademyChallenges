import React from 'react';
import Grocery from './Grocery';

let GroceryList = props => {

  let items = props.groceries.map(item => {
    return(
      <Grocery
        key={item.id}
        name={item.name}
        popup={props.handleButtonClick} />
    )
  })

  return(
    <ul>
      {items}
    </ul>
  );
}

export default GroceryList;
