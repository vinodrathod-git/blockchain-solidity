pragma solidity ^0.5.1;

import "./Calculator_library.sol";
//best site to learn library https://medium.com/@jeancvllr/solidity-tutorial-all-about-libraries-762e5a3692f9

contract SimpleCalculator {
    uint256 public value;
    
    function multiple(uint _value1, uint _value2) public {
        value = Calculator.multiple(_value1, _value2);
    }
    
    function addition(uint _value1, uint _value2) public {
        value = Calculator.addition(_value1, _value2);
    }
    
    function subraction(uint _value1, uint _value2) public {
        value = Calculator.subraction(_value1, _value2);
    }
    
    function divide(uint _value1, uint _value2) public {
        value = Calculator.divide(_value1, _value2);
    }
}
