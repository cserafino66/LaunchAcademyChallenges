import React from 'react';

const Tweet = props => {
  let heartHandler = event => {
    event.preventDefault();
    alert("Like");
  }
  return(
    <div className="wrapper">
      <div className="row">
        <div className="picDiv column small-3">
          <img src={props.data.user.profile_image_url}></img>
        </div>
        <div className="headerDiv column small-9">
          {props.data.user.name}
          {props.data.user.screen_name}
          {props.data.user.timestamp_ms}<br />
          {props.data.text}
        </div>
      </div>

      <div>

      </div>
    </div>
  )
};
export default Tweet;
