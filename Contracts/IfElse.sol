// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract IfElse {
    function condition(uint256 num) public pure returns(uint256) {
        if (num < 10) {
            return 0;
        }else if (num > 20) {
            return 1;
        }else {
            return 2;
        }
    }
}