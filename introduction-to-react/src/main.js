import './main.scss';
import React from 'react';
import ReactDom from 'react-dom';
import Header from './components/Header'

let headerElement = (
  <h1 onClick={ (event) => { alert('Roar!')} }>
    I am a React element! Hear me roar!
  </h1>
);

ReactDom.render(
  <Header />,
  document.getElementById('app')
);
