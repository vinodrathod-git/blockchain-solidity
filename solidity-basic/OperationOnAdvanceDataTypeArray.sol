pragma solidity ^0.5.1;


contract ArrayOperation{
    
    string[] public stringArray;
    
    function getLength() view public returns(uint){
        
        return stringArray.length;
    }
    
    function setValueToArray(string memory _valueToBeAdded ) public{
        
         stringArray.push(_valueToBeAdded);
    }
    
    function showArrayValue(uint _position) view public returns(string memory){
        
        return stringArray[_position];
    }
    
    
    
}
