pragma solidity ^0.6.0;


contract Parent {
    Child[] public childArray;
    
    event childBirth(
        uint256 _datetime,
        string _name,
        address indexed childAddress
        );

    function addChild(string memory _name) public {
        Child child = new Child(_name);
        childArray.push(child);
        emit childBirth(
            now,
            _name,
            address(child)
            );
    }
    
}

contract Child {
    string childName;
    constructor(string memory _childName) public{
        childName = _childName;
    }
    
}
