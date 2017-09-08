import React, { Component } from 'react';
import data from '../constants/data';
import styles from '../stylesheets/index.css';
import PlacesList from './PlacesList';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      checkedPlaceId: []
    }
    this.checkedPlaceFunction = this.checkedPlaceFunction.bind(this)
  }

  checkedPlaceFunction(id) {
    if (this.state.checkedPlaceId === null) {
      this.setState({checkedPlaceId: id})
    } else if (this.state.checkedPlaceId === id) {
      this.setState({checkedPlaceId: null})
    } else {
      this.setState({checkedPlaceId: id})
    }
  }

  render() {
    let places = data.places.map((place) => {
      let check;
      if (this.state.checkedPlaceId === place.id) {
        check = "strikethrough"
      } else {
        check = "";
      }
      return (
        <PlacesList
          key={place.id}
          id={place.id}
          name={place.name}
          checkedPlaceFunction={this.checkedPlaceFunction}
          check={check}
        />
      );
    })
    return(
      <div>
      <h3>Wanderlust Wishlist</h3>
      {places}
      </div>
    )
  }
}

export default App;
