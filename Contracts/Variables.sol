// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Variables {

//-----------------------------------------------------------------------
    /*
    In Solidity, there are three main types of variables

    Local
      --Declared inside a function
      --stored on the blockchain
    
    state
      --Declared outside a functin
      --stored on the blockchain
    
    global
      --Provides information about the blockchain


    */
//----------------------------------------------------------------------
    //State variables are stored on the blockchain
    uint256 public myVariable;

    //Local Variables: Temporary and only exists during function executin
    function myFunctin()  public {
        uint256 myLocalVariable = 10;
        myVariable = myVariable + myLocalVariable;

        //here is the global variable
       // uint256 timestamp = block.timestamp; 
    }
}

