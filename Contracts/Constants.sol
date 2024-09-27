// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Constants {
    /*
    Constants are immutable values that are set at the time of contract deployment
    and cannot be changed afterward.Constants are used to save gas since they are
    stored directly in the bytecode rather than the storage

    */

    //write in uppercase letter (convention)
    address public constant My_ADDRESS = 0x3DCf36e9c73aB611D61a36b97076e581255F9F20;
   
}