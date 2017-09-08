import React from 'react';
import Tweet from './Tweet';
import data from '../constants/data';

const TwitterFeed = props => {
  let tweetArray = props.data.map(tweet => {
    return(
      <Tweet
      key={tweet.id_str}
      data={tweet}
      />
    )
  })
  return(
    <div>
      {tweetArray}
    </div>
  )
}
export default TwitterFeed;
