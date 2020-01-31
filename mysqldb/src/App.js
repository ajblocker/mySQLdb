import React from 'react';
import { Component } from 'react';
//changes name browserRouter to router
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Footer from './Components/Footer';
import NavBar from './Components/NavBar';
import Home from './pages/Home';
import Products from './pages/Products';
import Contacts from './pages/Contact';

import './styles.css';

class App extends Component {
  state = {
    products: [],
    error: false
  }

  //invoked immediately as component mounted
    componentDidMount(){
      //fetch resources to make GET request to endpoint
      fetch('/api/products')
      //parses the output to JSON, returns promise
      .then(res => res.json())
      //sets the value of state to the output from the API call
      .then((data) => {
        this.setState({ products: data })
      })
      //logs any error
      .catch(err => {
        console.log(err)
        this.setState({ err })
      })
    }
  render(){
   
    return (
      <Router>
        <div>
          <NavBar />
            <Route exact path="/home" component={Home} />
            <Route exact path="/products" component={Products} />
            <Route exact path="/contact" component={Contacts} />
          <Footer />
        </div>
      </Router>
    );
  }
}
  
  
  export default App;
  
      
  

    


