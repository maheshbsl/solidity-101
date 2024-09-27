//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 myFavouriteNumber;

    struct Person {
        uint256 favouriteNumebr;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string name => uint256 myFavouriteNumber)
        public nameToFavouriteNumber;

    // function to store favourite number
    function store(uint256 _favouriteNumebr) public {
        myFavouriteNumber = _favouriteNumebr;
    }

    //function to retrieve favourite Number
    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }

    //function to add a person

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
