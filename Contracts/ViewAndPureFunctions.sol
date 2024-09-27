// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*

VIew function declares that no state will be changed
Pure function declares that no state variable will be changed or read.

*/

contract ViewAndPure {
    uint256 public number = 1;

    //promise not to modify the state
    function addTox(uint256 y) public view returns (uint256) {
        return number + y;
    }

    //promise not to modify or read from the state
    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i * j; // this doesn't read nor modify the state variable
    }


}