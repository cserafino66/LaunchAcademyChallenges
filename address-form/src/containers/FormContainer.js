import React, { Component } from 'react'
import TextField from '../components/TextField'

class FormContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: '',
      lastName: '',
      address: '',
      city: '',
      stateSelected: '',
      zipCode: '',
      phoneNumber: '',
      email: '',
      label: '',
      // input: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleInput = this.handleInput.bind(this)
  }

  handleSubmit(event) {
    event.preventDefault();
    this.setState({
      firstName: this.firstName,
      lastName: this.lastName,
      address: this.address,
      city: this.city,
      stateSelected: this.stateSelected,
      phoneNumber: this.phoneNumber,
      email: this.email
    })
    console.log(this.state)
  }

  handleInput(event, fieldName) {
    debugger
    this.setState({ [fieldName]: event.target.value})
  }

  render() {
    let fieldArray = [
      { label: "First Name", name: "firstName" },
      { label: "Last Name", name: "lastName" },
      { label: "Address", name: "address" }
    ]

    let textFields = fieldArray.map((fieldInfo) => {
      let fieldInputHandle = (event) => {
        return this.handleInput(event, fieldInfo.name)
      }
      return (
        <TextField
          key={fieldInfo.name}
          label={fieldInfo.label}
          name={fieldInfo.name}
          content={this.state[fieldInfo.name]}
          handleSubmit={this.handleSubmit}
          handleInput={fieldInputHandle}
        />
      )
    })

    return (
      <form className="callout" id="shipping-address-form" onSubmit={this.handleSubmit}>
      <div>
          <h1>Shipping Address</h1>
          {textFields}
          <TextField
            label='City'
            name='city'
            content={this.state.city}
            handleSubmit={this.handleSubmit}
            handleInput={this.handleInput}
          />
          <TextField
            label='State Abbreviation'
            name='stateSelected'
            content={this.state.stateSelected}
            handleSubmit={this.handleSubmit}
            handleInput={this.handleInput}
          />
          <TextField
            label='ZIP Code'
            name='zipCode'
            content={this.state.zipCode}
            handleSubmit={this.handleSubmit}
            handleInput={this.handleInput}
          />
          <TextField
            label='Phone Number'
            name='phoneNumber'
            content={this.state.phoneNumber}
            handleSubmit={this.handleSubmit}
            handleInput={this.handleInput}
          />
          <TextField
            label='Email'
            name='email'
            content={this.state.email}
            handleSubmit={this.handleSubmit}
            handleInput={this.handleInput}
          />
        </div>
      </form>


      // <form className="callout" id="shipping-address-form">
      //   <div>
      //     <label htmlFor="firstName">First Name:</label>
      //     <input type="text" id="first-name" name="firstName" />
      //   </div>
      //
      //   <div>
      //     <label htmlFor="lastName">Last Name:</label>
      //     <input type="text" id="last-name" name="lastName" />
      //   </div>
      //
      //   <label htmlFor="address">Address:</label>
      //   <input type="text" id="address" name="address" />
      //
      //   <div>
      //     <label htmlFor="city">City:</label>
      //     <input type="text" id="city" name="city" />
      //   </div>
      //
      //   <div>
      //     <label htmlFor="state">State:</label>
      //     <input type="text" id="state" name="state" />
      //   </div>
      //
      //   <div>
      //     <label htmlFor="zipCode">Zip Code:</label>
      //     <input type="text" id="zip-code" name="zipCode" />
      //   </div>
      //
      //   <div>
      //     <label htmlFor="phoneNumber">Phone Number:</label>
      //     <input type="text" id="phone-number" name="phoneNumber" />
      //   </div>
      //
      //   <div>
      //     <label htmlFor="email">Email:</label>
      //     <input type="text" id="email" name="email" />
      //   </div>
      //
      //   <input type="submit" className="button" value="Submit "/>
      // </form>
    )
  }
}

export default FormContainer
