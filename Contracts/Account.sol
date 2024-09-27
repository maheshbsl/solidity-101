// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Account {
    
    uint256 public balance;
    uint256 public constant MAX_UNIT = 2 ** 256 -1;

    //function for deposit
    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        //balance + +amount does not overflow if balance _+ _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;
        assert(balance >= oldBalance);
    }
    
    //function for withdraw
    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;

        //balance must be greater than withdraw ammount
        //balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if(balance < _amount){
            revert("Underflow");
        }

        balance = balance - _amount;
        //assert is used to check conditions that should never be false
        assert(balance <= oldBalance);

    }
}