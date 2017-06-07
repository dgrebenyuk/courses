import React from 'react'
import ReactDOM from 'react-dom'
export default class Page extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    return(
      <div className='my_class'>{this.props.name}</div>
    );
  }
}
