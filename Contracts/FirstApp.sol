// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    //originally the value of count is zero
    uint256 public count;

    //function to get the current count
    function get() public view returns(uint256){
        return count;
    }

    //function to increase count
    function increment() public {
        count = count + 1;
    }

    //function to decrease count by 1
    function decrement() public{
        // the function will reverts if count is 0
        count = count - 1;
    }
}