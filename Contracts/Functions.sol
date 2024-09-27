// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Functions {

    //functions can return multiple values
    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 2);
    }

    //return values can be named
    function named() public pure returns (uint256 x, bool y, uint256 z) {
        return (1, false, 2);
    }

    //return values can be assigned to their names
    //In this case return statement can be omitted
    function assigned() public pure returns (uint256 x, bool y, uint256 z) {
        x = 1; y = true; z = 3;
    }
    
}