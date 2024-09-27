// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
In Solidity, Enums stand for enumerable.Enums are user-defined data
types that restrict the variable to have only one of the predefined 
vales.
*/

contract Enums {
    //enum for size of juices 
    enum JuiceSize {Small, Medium, Large}

    //variable for JuiceSize
    JuiceSize public size;

    //order large size
    function orderLarge() public {
        size = JuiceSize.Large;
    }

    //order Small size
    function orderSmall() public {
        size = JuiceSize.Small;
    }

    //order Medium size juice
    function orderMedium() public {
        size = JuiceSize.Medium;
    }

    //the final choice
    function finalChoice() public view returns(JuiceSize) {
        return size;
    }
}