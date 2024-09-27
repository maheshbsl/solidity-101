// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
Arrays are used to store multiple values of the same type.
Solidity supports both fixed-size and dynammic-size arrays,
and they can be of any data type, including user-defined types 
like structs.

*/

contract Arrays {
    /*Several ways ot initialized an array

    Fixed-size array  ==> has a predefined lenght and cannot be resized.
    syntax
    ------
    type[lenght] arrayName;
    uint256[5] myArray; an array that holds 5 unsinged integers

    */
    uint256[5] myArray1;
//-------------------------------------------------------------------------------

    /*
    Dyanmic Array
    syntax
    -----
    type[] arrayName;
    uint256[] myArray;
     */

     uint256[] myArray2;
//--------------------------------------------------------------------------------
    //Functions in array
    //push()
    //pop()
    //length

     uint256[] public arr;
     
    //function to add element to an array
    function add(uint256 _value) public {
        //append to an array
        //this will increase the size of the array by 1
        arr.push(_value);
    }

    //function to remove last element from an array
    function pop() public {
        //remove the last element from array
        // this wil decrease the array length by 1
        arr.pop();
    }

    //function to get the lenght to array
    function getLength() public view returns(uint256) {
        return arr.length;
    }

    //function to remove an element at specific index in an array
    function remove(uint256 index) public {
        //delete does not change the array length
        //it resets the value at index to it's default value,
        //here to zero
        delete arr[index];
    }

    //function to get element from specific index 
    function get(uint256 index) public view returns (uint256) {
        //returns the value at that index
        return arr[index];
    }

    //Solidity can return the entire array.
    //But this function should be avoided for
    //arrays that can grow indefinitely in length

    //function to get the whole array
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function example() pure external {
        // create array in memory, only fixed size can be created
        //uint256[] memory array = new uint256[](5);
        
    }
}