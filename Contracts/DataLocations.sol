// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
In Solidity, data locations refer to hwre the data is stored and accessed in a smart contract.
Thre are three primary data locations:

1.Storage => Variable is a state varaible (stored on blockchain)

2.Memory  => variable is in memory and it exists while a function is being called

3.Calldata => special data location that contains function argements

*/
contract DataLocations {

    //this state variable is stored in storage
    string public storedText;

    //function that uses different data locations
    function setStoredText(string calldata _text) public {
        storedText = _text; // _text is stored in calldata and copied to storage
    }

    function getTempString() public pure returns(string memory) {
        string memory tempString = "Temporary"; //tempString is stored in memory
        return tempString;
    }

}