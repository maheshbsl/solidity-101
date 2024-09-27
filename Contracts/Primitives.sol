// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitives {
    /* 1
    Boolean
    Type : bool
    Values : true / false
    */

    bool public isTrue = true;
//------------------------------------------------------------------------
    /* 2
    Integer
    Solidity provides both signed and unsigned integers
    Unsigned Integers (uint) --> non negative integers
    
    Different sizes are availabel
    uint8, to uint256 in steps of 8

    uint8   ranges from 0 to 2 ** 8 - 1 (0 to 2**n -1) n is the number of bits
    uint16  ranges from 0 to 2 ** 16 - 1
    ....
    uint256 ranges from 0 to 2 ** 256 - 1

    */

    uint8 public myAge = 20;
    uint256 public uncleAge = 40;
    uint public auntyAge = 35; // uint is alias for uint256
//-------------------------------------------------------------------------------
    /*
    Negative numbers are aslo allowed int types (signed) integers
    like uint, the ranges are int8 to int256

    int256 ranges from -2 ** 255 to 2 ** 255 -1

    */

    int public num1 = -22;
    int public num2 = 22;
//--------------------------------------------------------------------------------
    
    /*
    Address
    Type : address
    Description  : Holds a 20 byte value(160 bits), ethereum account address
    Special type : address payable (you can send ether)

    Type Conversion
    ---------------
    Implicit  ==> address payable ==> address are allowed

    Explicit  ==> address ==> address payable via payable(address)

    */

    //address
    address public myAddress = 0xE077f7D6091FF1BBAC8746a21Af977c610C0D000;

    // address payable
    address payable  public  myAddress1 = payable(0x3DCf36e9c73aB611D61a36b97076e581255F9F20);
//--------------------------------------------------------------------------------------

   /*
   Byte Array
   Fixed-size byte arrays and Dynamic-size byte arrays
   Fixed-size 
   
   Type: bytes1,bytes2,....,bytes32
   Description : Fixed-size arrays og bytes form 1 to 32 bytes

   bytes32 data =  0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef;
   
   */

   //fized size
   bytes32 public data  =  0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef;
//-----------------------------------------------------------------------------------------------------

  /*
  Dynamic-size byte array

  Type : bytes
  Description : Dynamically sized byte array

  bytes dynamicData = "hello";
  */

  //dynamic byte

  bytes public dynamicData = "Solidity";

//------------------------------------------------------------------------

  // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
  
}