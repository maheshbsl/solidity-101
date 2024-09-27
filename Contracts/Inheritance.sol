// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
Inheritance In Solidity allows one contract(the child or derived contract)
to inherit properties and functions from another contract(the parent or base contract)

**Single Inheritance
--------------------
A contract can inherit from one parent contract.

**Multipe Inheritance
----------------------
A contract can inherit from multiple contracts, but care must be taken
to manage the order of inheritance to avoid ambiguity(the diamond problem)

**Function Overriding
---------------------
Child contracts can override functions defined in parent contracts to
provide specific implementations.

/* Graph of inheritance

    A
   / \
  B   C
 / \ /
F  D,E

---------------------------------------------------------------------
Contracts can inherit other contract using the `is` keyword.
Function that is going to be overridden by a child contract must be declared as `virtual`.
Function that is going to override a parent function must use the keyword `override`.


*/


contract A {
    function foo() public  pure virtual  returns (string memory) {
        return "A";
    }
}

//contracts inherit other contracts by using the keyword `is`.
contract B is A {
    //override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

//Contracts can inherit from multiple parent contracts.
//When a function is called that is defined multiple times in
//different contracts, parent contracts are searched from 
//right to left, and in depth-first manner

contract D is B, C {
    //D.foo() returns "C"
    //Since C is the right most parent contract with function foo()
    function foo() public pure  override(B, C) returns (string memory) {
        return super.foo();
    } 
}