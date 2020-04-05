//struct is similar to a JSON object having each attribute in key value pair
//struct supports all datatype suppoorted by Solidity
//struct is some what similar to Javascript object


pragma solidity ^0.5.1;

pragma experimental ABIEncoderV2;

contract CRUD {
    
    struct block{
        uint256 height;
        uint addedTimeStamp;
        string data;
    }
    
    uint public height;
    block[] public blockArray ;
    
    constructor() public{
        height = 0;
    }
    
    
     function addBlock(string memory _data) public {
         blockArray.push(block(height,now,_data));
         height++;
         
     }
     
    function getBlockDetail(uint _location) public view returns(uint,uint,string memory) {
         return (blockArray[_location].height,blockArray[_location].addedTimeStamp,blockArray[_location].data);
     }
     
    function updateBlockDetail(uint _location,string memory _data) public {
        blockArray[_location].data = _data;
    }
     
     
    function getAllBlockDetails() public view returns(block[] memory) {
         return blockArray;
    }
     
     function removeABlock(uint _location) public {
         delete  blockArray[_location];
     }
     
 }

