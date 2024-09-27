// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
A  function modifier in solidity is a way to change the behaviour of a funciton
in a declarative manner.
Modifier are used for 
1. Access control
2. Validation
3. Preconditions that must be met before executing a function

Syntax
--------
modifier modifierName() {

    //logic before function execution
    _;
    // logic after function execution

 }   

*/

contract Modifiers {

    //example

    address public owner;

    constructor() {
        owner = msg.sender; // set contract deployer as the owner
    }

    //Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    //function that only the owner can call
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}

contract FunctionModifier {
    //We will use these variable to demonstrate how to use modifiers
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor () {
        //set the transaction sender as the owner of the contract
        owner = msg.sender;
    }

    //modifeir to check if the caller is the owner of the contract
    modifier onlyOwner() {
        require(owner == msg.sender, "Not the owner");
        //underscore is a special character only used inside
        // a function modifier and it tells solidity to 
        // execute the rest of the code
        _;
    }

    //modifiers can also take inputs.This modifier checks that the
    //address passed in is not the zero address.

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not the valid address");
        _;
    }

    //function that only an owner can call
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }
}

