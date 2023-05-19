// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MathFunctions {
    function adder(uint _a, uint _b) public pure returns (uint, bool) {
        unchecked { uint sum = _a + _b;
        bool error = false;
        
        if (sum < _a || sum < _b) {
            sum = 0;
            error = true;
        }
        
        return (sum, error);}
    }
    
    function subtractor(uint _a, uint _b) public pure returns (uint, bool) {
        unchecked { uint difference = _a - _b; 
        bool error = false;
        
        if (_b > _a) {
            difference = 0;
            error = true;
        }
        
        return (difference, error);}
    }
}
