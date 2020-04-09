library Calculator_library {

    function divide(uint256 _a, uint256 _b) internal pure returns (uint256){   
        require(_b > 0);
        uint256 _c = _a / _b;
        return _c;
    } 
    
    function multiple(uint256 _a, uint256 _b) internal pure returns (uint256){   
        uint256 _c = _a * _b;
        return _c;
    } 
    
    function addition(uint256 _a, uint256 _b) internal pure returns (uint256){   
        uint256 _c = _a + _b;
        return _c;
    } 
    
    function subraction(uint256 _a, uint256 _b) internal pure returns (uint256){ 
        uint256 _c = _a - _b;
        return _c;
    }     
    
    
    
}
