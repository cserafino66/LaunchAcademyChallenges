import React from 'react';
import IconReferenceList from './IconReferenceList';

const IconGuide = props => {
  let articleDescription=`These are written lessons that will walk you through
    a particular concept or technique. Don't submit anything for these!`;
  let exerciseDescription=`These assignments are intended to be small, short tasks
   that will allow you to put some of that newly acquired knowledge to work!
   You should submit solutions to all of these via ET!`;
  let challengeDescription=`These assignments are larger, and usually require you to
   put two or three of the new concepts you've learned together.
   You should submit solutions to all of these via ET!`;
  return(
    <div>
      <h2>Launch Academy Icon Guide</h2>
      <p>Here are all the symbols you need to know to understand our curriculum!</p>
      <IconReferenceList />
    </div>
  );
};

export default IconGuide;
