// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

     //to write or update a state variable you need to send a transaction
    //on the other hand, you can read state variables, for free, without any transaction fees.

contract ReadWrite {
    // State variable to store a number
    uint256 public myNumber;

    //functioin to store a number
    //you need to send a transaction to write to a state variable
    function store(uint256 _myNumber) public {
        myNumber = _myNumber;
    }

    //function to get a number
    //you don't need to send a transaction to read a state variable
    function get() public view returns(uint256) {
        return myNumber;
    }

}