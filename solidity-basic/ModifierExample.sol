pragma solidity ^0.5.1;

contract Transaction{
    
    address owner;
    uint public height;
    
    struct transactionDetails{
          uint amount;
          string sender;
          string to;
          uint transactionNumber;
          uint timeStamp;
    }
    
    transactionDetails[] transactionArray;
    
    constructor() public {
        height = 0;
        owner = msg.sender;
    }
    
    //creating a function modifier
    
    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }
    
    modifier onlyThreeTransaction(){
        require(height<=3);
        _;
    }    

    function addATransaction(string memory _sender,string memory _to,uint _amount)
    public
    onlyOwner
    onlyThreeTransaction
    {
        transactionArray.push(transactionDetails(_amount,_sender,_to,height,now));
        height++;
    }
}
