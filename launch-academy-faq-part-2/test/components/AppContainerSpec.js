import React from 'react';
import Question from '../../src/components/Question';
import App from '../../src/containers/App';
import data from '../../src/constants/data';

describe('App', () => {
  let wrapper;
  
  beforeEach(() => {
    jasmineEnzyme();
    wrapper = mount(<App data={data} />);
  });

  it('should have the specified initial state', () => {
    expect(wrapper.state()).toEqual({ selectedQuestion: null })
  })

  it('should render an App Component', () => {
    expect(wrapper.find('App')).toBePresent()
  });

  it('should render the text of the Answer component when selectedQuestion is set to a question', () => {

  });

  it('should change the selectedQuestion when a question is clicked', () => {
    wrapper.find(Question).first().find('h5').simulate
  })
});
