import React from 'react'
import axios from 'axios'
import BookForm from './book_form'
export default class Page extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      books: []
    }
    this.addBook = this.addBook.bind(this);
    this.getBooks();
  }

  addBook(book) {
    let books = this.state.books.slice();
    books.push(book);
    this.setState({books: books})
  }

  getBooks() {
    axios.get('/api/v1/books').then((response) => {
      this.setState({books: response.data})
    });
  }

  render(){
    return(
      <ul>
        {this.state.books.map(function(book) {
          return <li key={book.id}>{book.title} by {book.author}</li>
        })}
        <BookForm addBook={this.addBook}/>
      </ul>
    );
  }
}
