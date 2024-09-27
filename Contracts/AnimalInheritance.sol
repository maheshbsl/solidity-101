// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//parent contract
contract Animal {

    string public species;

    constructor (string memory _species) {
        species = _species;
    }

    function makeSound() public virtual pure returns (string memory) {
        return "Some sound";
    }
}

//Child Contract
contract Dog is Animal {

    constructor () Animal("Dog") {}

    function makeSound() public override pure returns (string memory){
        return "Woof";
    }
}