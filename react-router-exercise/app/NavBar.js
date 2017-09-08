import React, { Component } from 'react';
import { Link } from 'react-router';

class NavBar extends Component{
  constructor(props){
    super(props);
    this.state = {

    }
  }

  render(){
    return(
      <div>
        <Link to='/'>Home</Link>
        <Link to='/greeting'>Greeting</Link>
        <Link to='/goodbye'>Goodbye</Link>
        <Link to='/customgreeting'>Custom Greeting</Link>
        {this.props.children}
      </div>
    )
  }
}

export default NavBar;
