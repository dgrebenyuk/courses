import React from 'react'
import ReactDOM from 'react-dom'
import IndexPage from './index/page'
document.addEventListener('DOMContentLoaded', () => {
  var root = document.getElementById('index-page');
  ReactDOM.render(
    <IndexPage {...(root.dataset)} />,
    root
  )
})
