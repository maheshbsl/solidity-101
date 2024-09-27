// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*
Mapping are created with the syntax mapping(keyType => ValueType)
The keyType can be any built-in value type, bytes,string, or any contract.
Tha valueType can be any type including another mapping or an array.
Mappings are not iterable.

*/

// contract Mapping {

//     //Mapping from address to unit
//     mapping(address => uint256) public myMap;

//     //functin to add specific value at specific address
//     function set(address _addr, uint256 _value) public {
//         //assigning the value at that address
//         myMap[_addr] = _value;
//     }

//     //remove the value from the address
//     function remove(address _addr) public {
//         //reset the value to default to default value
//         delete myMap[_addr];
//     }

    
//     //whenever you call get() with a address, you will get a value at that address
//     function get(address _addr) public view returns(uint256) {
//         // Mapping always returns a value
//         //If the value was empty, it will return the default value
//         return myMap[_addr];
//     }   
// }


contract NestedMapping {
    // Nested Mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) public nestedMap;
    
    //setting value
    function setNested(address _addr, uint256 _value, bool ans) public {
        nestedMap[_addr][_value] = ans;
    }

    //remove value
    function removeNested(address _addr, uint256 _value) public{
        //return value at the key == > set default value
        delete nestedMap[_addr][_value];
    }

    // get value from nested map
    function getNested(address _addr, uint256 _value) public view returns (bool) {
        //return value at the provided key
        return nestedMap[_addr][_value];
    }

}