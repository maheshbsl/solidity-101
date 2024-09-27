// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*
In solidity, receive() and fallback() are two special functions that handle 
Ehter transfers and unexpected function calls to a smart contract.They provide
a way to interact with contracts that might not have a defined finction for specific 
interactions.
-----------------------------------------------------

receive()
---------
the receive() function is a special function that is triggered when
a contract receives plain ether without any data(function call or parameter)

it is used to handle simple Ether transfer

It must be mark as `external` and `payable`.

-----------------------------------------------------------------------
fallback()

the fallback function is triggered when a contract receives ether with 
data or , when a function that  doesn't exit is called

It can be used to log these unexpected transactions, revert them or handle them gracefully.

The fallback function can optionally be marked as `payable` if it is supposed to 
handle Ether transfers.

fallback() has a 2300 gas limit when called by transfer or send


*/

contract Fullback {

}