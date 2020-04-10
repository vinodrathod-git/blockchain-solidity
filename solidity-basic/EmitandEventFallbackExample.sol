pragma solidity ^0.5.1;


contract EmitandEventFallbackExample{

    mapping(address => uint256) public balances;  
    address payable wallet;
    
    event Purschase(
        address _buyer,
        uint256 _amount
        );
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    //creating fallback function
    function() external payable {
      buyToken();
    }
    
    
    function buyToken() public payable {
        
        //msg.sender is used to capture the address of the caller
        balances[msg.sender] += 1;
        //incrementing balance by one to the caller address
        //aslo we need to send it to a account
        //transfering funds to a address
        wallet.transfer(msg.value);
        emit Purschase(msg.sender,1);
    
    }
}
