
/// pragma defines the complier to be used.

pragma solidity >=0.4.16 <0.6.0;

/// Similar to a java class 
contract pojo{
   
   ///createing variables/attributes
   string msg;
   uint smallValue; // unsigned int 256 ucan use what u want unit8
   string public constantValue = "constant value"; // setting a constant
   
   ///default access modifier is private for attributes and method are public
   
   /// constructor is equivalent to method, only a single constructor can be used to intiliaze the contract attributes
   constructor() public {
       msg = "intial value";
       smallValue = 0;
   }
   
   ///memory keyword is used : without the memory keyword solidity tries to declarevariable in storage(state variable are permantly stored in contract)
   //.i.e. they are written to ethereum blockchain writing them to blockchain will result to larger memory consumption
   //memory is a temp storage and it's earased 
   function getConstatntValue()  public view returns(string memory) {
       return constantValue;
   }
    
   function setMsg(string memory _rcvdMsg ) public {
       msg = _rcvdMsg;
   }
    
    function getMsg() public view returns(string memory) {
        return msg;
    }    
    
    function setsmallValue( uint svalue) public {
         smallValue = svalue;
    }
    
    function getsmallValue() public view returns(uint){
        return smallValue;
    }    
    
    function setBoth(string memory _rcvdMsg,uint sValue) public {
        msg = _rcvdMsg;
        smallValue = sValue;
    }
    
}

