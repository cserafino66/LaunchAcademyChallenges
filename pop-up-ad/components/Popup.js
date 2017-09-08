import React from 'react';

const Popup = props => {
  let handleExit = () => {
    confirm("Are you sure you don't want to see Taylor Swift?")
  }
  return(
    <div className='message'>
    <div onClick={handleExit}>
      <i className="fa fa-times" aria-hidden="true"></i>
    </div>
      <h3>You have won tickets to see Taylor Swift!!</h3>
      <p>Please enter your email so we can send you the tickets</p>


      <form>
        <div className="row">
          <div className="column small-8">
            <label placeholder="email"></label>
            <input type="text" name="Name"></input>
          </div>
            <div className="column small-4">
              <button type="submit">CLAIM YOUR PRIZE</button>
            </div>
        </div>
      </form>
    </div>
  );
};

export default Popup;
