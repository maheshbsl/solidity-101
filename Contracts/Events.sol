// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
In solidity, events are a way for smart contracts to communicate with the
Outside world by logging data to the blockchain.These logs are stored on the 
blockchain and can be accessed by external applications like
dApps or blockchain explorers, but not directly accessible within 
smart contract.

** Events enable smart contract to emit signals that can be captured
** by front-end interfaces or off-chain processes.

Syntax
-----------
event EventName(parameters);

emit EventName(arguments);


*/

contract Event {
    // Event declaration 
    // Up to 3 parameters can be indexed
    // Indexed parameters helps you filter the logs by the indeded parameter

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "hello");
        emit AnotherLog();
    }
}