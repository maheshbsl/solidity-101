// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; 
/*
An error will undoo all changes made to the state during a transaction
You can throw an error by calling `require` , `revert` and `assert`.

*/

contract Errors {
    //require//
   // ------------
    //used to validate inputs and conditions before executing a function
    //if the conditin is false, it reverts the transaction, undoing all state changes.
    
    function testRequire(uint256 _i) public pure {
        //require should be used to validate conditions such as:
        // inputs, conditions before execution, return values from calls to other functions

        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        //revert is useful when the condition to check is complex
        //this code does the exact same thing as the expample above
        if(_i <=10 ){
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;

    //assert
    function testAssert() public view {
        // Assert should only be used to test for internal errors
        //and check invariants

        //here we assert that num is always equal to 0
        //since it is impossible to update the value of num

        assert(num == 0);
    }

    //custom error
    // error InsuffucientBalance(uint256 balance, uint256 withdrawAmount);

    // function testCustomError(uint256 _withdrawAmount) public view {
    //     uint256 bal = address(this).balance;
    //     if(bal < _withdrawAmount) {
    //         revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
    //     }
    // }



}