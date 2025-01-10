import React from "react";
import {
  BrowserRouter as Router,
  Routes,
  Route,
} from "react-router-dom";
import Home from './containers/Home'
import About from './containers/About'
import Login from './containers/Login'
import SignUp from './containers/SignUp'

function App() {
  return (
    <Router>
      <Routes>
        {/* トップページ */}
        <Route path="/" element={<Home />} />
        {/* 説明ページ */}
        <Route path="/about" element={<About />} />
        {/* ログインページ */}
        <Route path="/login" element={<Login />} />
        {/*　新規登録ページ */}
        <Route path="/signup" element={<SignUp />} />
      </Routes>
    </Router>
  );
}

export default App;
