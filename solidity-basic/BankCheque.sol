pragma solidity ^0.5.1;

contract BankCheque{
    //
    //cheque has three attributes
    //beneficary
    //amount
    //datetime after it should be issued
    // 
    
    
    address payable beneficary;
    //uint256 amount; no need to add amount explictly u just need to tx ether 
    //1604479740
    uint256 releasedDateTimeStamp;
    
    //"0xdD870fA1b7C4700F2BD7f44238821C26f7392148","1586577551"
    
    constructor(address payable _beneficary,uint256 _releasedDateTimeStamp) public payable{
        require(_releasedDateTimeStamp >= now," Please enter a futuristic time");
        beneficary = _beneficary;
        //amount = _amount;
        releasedDateTimeStamp = _releasedDateTimeStamp;
    }
    
    modifier isReleasedTimeStampGreaterThanNow {
        require(now >= releasedDateTimeStamp,"Try after sometime" );
        _;
    }
    
    
    function withdraw() public isReleasedTimeStampGreaterThanNow payable{
        beneficary.transfer(address(this).balance);
    }    
}



