import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Web3 from 'web3';
import CssBaseline from '@material-ui/core/CssBaseline';
import Typography from '@material-ui/core/Typography';
import Container from '@material-ui/core/Container';


class App extends Component {

  constructor(props){
    super(props)
    this.state = {account: '', network:''}
  }  

  componentDidMount(){  
    this.loadBlockchainData();  
  }
  async loadBlockchainData(){
     //debugger;
      const web = new Web3(window.ethereum)
                  window.ethereum.enable().catch(error => {
                      // User denied account access
                      console.log(error)
                  })
                  const _acc = await web.eth.getAccounts();
                  const _nw = await web.eth.net.getNetworkType();
                  console.log(_acc[0]);

     console.log("network ", _nw);
     this.setState(
       {
         account:_acc[0],
         network:_nw
       }
       )
  }
  render(){
    return (
  <div>
    
    <CssBaseline />
      <Container fixed>
        <Typography component="div" style={{ backgroundColor: '#cfe8fc', height: '100vh' }}>

        <h1 style = {{fontSize: '116px'}}>Hello</h1>
        <h1 style = {{fontSize: '46px'}}>{this.state.account}</h1>
        <h1 style = {{fontSize: '66px'}}>Network Name : {this.state.network} </h1>
        </Typography>
      </Container>
  </div>
    )}
}

export default App;
