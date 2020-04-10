///Escrow
///broker

pragma solidity ^0.5.1;

contract middleman{
    address public agent;
    mapping(address=>uint256) public account;
    
    constructor() public {
        agent = msg.sender;
    }
    
    modifier agentOnly {
         require(agent == msg.sender);
        _;
    }
    
    function deposit(address _payee) public agentOnly payable{
        uint256 _amount = msg.value; 
        account[_payee] = account[_payee] + _amount;
    }
    
    function withdraw(address payable _payee) public agentOnly {
        uint256 _amount = account[_payee];
        account[_payee] = 0;
        _payee.transfer(_amount);
        //as we are using .tx / .sender  we must add payable in parameters
    }
    
}
