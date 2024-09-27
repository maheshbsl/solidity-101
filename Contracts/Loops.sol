// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loops {
    function sumOfNumbersTill(uint256 till) public pure returns(uint256) {
        uint256 sum = 0;

        for(uint256 i = 0; i < till; i++) {
            sum = sum + i;  
        }
        return sum;
    }
}