// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandlingContract {
    uint256 public value;
    
    function setValue(uint256 _newValue) public {
        // Example usage of require()
        require(_newValue > 0, "Value must be greater than zero.");
        
        // Example usage of assert()
        uint256 result = value + _newValue;
        assert(result > value);
        
        // Example usage of revert()
        if (_newValue == 42) {
            revert("The value 42 is not allowed.");
        }
        
        value = _newValue;
    }
}
