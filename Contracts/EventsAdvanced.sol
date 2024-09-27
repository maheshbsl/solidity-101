// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;


//Event-Driven Architecture
contract EventDrivenArchitecture {
    
    //This event is emitted when a transfer is initiated
    event TransferInitiated (address indexed from, address indexed to, uint256 value);
    
    //This event is emitted when a transfer is confirmed.
    event TransferConfirmed (address indexed from, address indexed to, uint256 value);

    //This event is emitted when a transfer is failed.
    event TranserFailed (address indexed from, address indexed to, uint256 value, string reason);
    
    //mapping for transfer conformation
    mapping (bytes32 => bool) public transferConfirmations;

    //mapping for user balances
    mapping (address => uint256) public balances;

    //initilize contract creator with some balances
    constructor () {
        balances[msg.sender] = 1000 ether;
    }
    
    //function modifier to check if the address ia valid
    modifier isValidAddress(address _addr) {
        require(_addr != address(0), "Invalid address");
        _;
    }

    //function modifier to check if the send has sufficient balance
    modifier hasSufficientBalance(uint256 value) {
        require(balances[msg.sender] >= value, "Insufficient balance");
        _;
    }

    function initiateTransfer (address to, uint256 value) public isValidAddress(to) hasSufficientBalance(value){

        emit TransferInitiated(msg.sender, to, value);
        balances[msg.sender] -= value;
    }

    function confirmTranfer(bytes32 transferID) public {
        require(!transferConfirmations[transferID], "Transfer already confirmed");
        transferConfirmations[transferID] = true ;
        emit TransferConfirmed(msg.sender, address(this), 0);
        /// ... confirm transfer logic
    }


}