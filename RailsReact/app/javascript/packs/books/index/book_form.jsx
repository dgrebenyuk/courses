import React from 'react'
import axios from 'axios'
export default class Form extends React.Component {
  constructor(props){
    super(props);
    this.handleChange = this.handleChange.bind(this);
    this.saveBook = this.saveBook.bind(this);
  }

  handleChange(e) {
    this.setState({[e.target.name]: e.target.value});
  }

  saveBook(e) {
    e.preventDefault();
    axios.post('/api/v1/books', {
      book: {
        title: this.state.title,
        author: this.state.author
      }
    }).then((response) => {
        this.props.addBook(response.data);
    });
  }

  render(){
    return(
      <form>
        <label>Title</label>
        <input type='text' name='title' onChange={this.handleChange}/>
        <label>Author</label>
        <input type='text' name='author' onChange={this.handleChange}/>
        <input type='submit' onClick={this.saveBook} />
      </form>
    );
  }
}
