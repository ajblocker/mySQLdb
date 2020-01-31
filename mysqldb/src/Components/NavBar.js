import React, { Component } from "react";
import { Link } from "react-router-dom";

class NavBar extends Component {
  state = {
    collapsed: true
  };

  //updating, !does oppposite of collapsed
  handleCollapse = () => this.setState({ collapsed: !this.state.collapsed });

  render() {
    //destructuring state
    const { collapsed } = this.state;

    return (
      <nav className="navbar navbar-expand-lg fixed-top">
        <button
          className="navbar-toggler "
          type="button"
          data-toggler="collapse"
          data-target="navagation-bar"
          onClick={this.handleCollapse}
        >
          <span className="navbar-toggler-icon">&#9776;</span>
        </button>
        <div
          className={`collapse navbar-collapse ${
            collapsed ? "collapsed" : "show"
          }`}
          id="navigation-bar"
        >
          <ul className="navbar-nav ml-auto">
            <li className="nav-item">
              <Link className="nav-link" to="/home">
                HOME
              </Link>
            </li>
            <li className="nav-item">
              <Link className="nav-link" to="/products">
                PRODUCT
              </Link>
            </li>
            <li className="nav-item">
              <Link className="nav-link" to="/contact">
                CONTACT
              </Link>
            </li>
          </ul>
        </div>
      </nav>
    );
  }
}

// function NavBar() {
//   return (
//     //expand for large devices and fixed at top
//      <nav className="navbar navbar-expand-lg fixed-top">
//         <button className="navbar-toggler " type="button" data-toggler="collapse" data-target="navagation-bar" onclick="myFunction()">
//               <span className="navbar-toggler-icon">&#9776;</span>
//         </button>
//               <div className="collapse navbar-collapse" id="navigation-bar">
//                   <ul className="navbar-nav ml-auto">
//                     <li className="nav-item"> <Link className="nav-link" to="/home">HOME</Link></li>
//                     <li className="nav-item"> <Link className="nav-link" to="/products">PRODUCT</Link></li>
//                     <li className="nav-item"> <Link className="nav-link" to="/contact">CONTACT</Link></li>
//                   </ul>
//               </div>
//     </nav>
//   )
// }

export default NavBar;
