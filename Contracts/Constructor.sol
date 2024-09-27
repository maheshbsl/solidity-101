// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Constructor {
    //A constructor is an optional functioin that is executed upon contract creation

    address public  owner;

    constructor() {
        owner = msg.sender; // once a contract is created the value of owner is assgined.
    }   
}

/*
In Solidity, a constructor is a special function that is executed
only once when a smart contract is deployed.It is used to initialized
the contract's state variables and set up any required conditions
before the contract can be used.
*/