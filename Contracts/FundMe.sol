// Get Funds from users
// Withdraw funds
// Set a minimum funding valud in USD

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe{

    using PriceConverter for uint256;

    uint256 public constant MINI_USD = 5e18; // constant for gas efficiency

    address[] public funders;
    mapping (address funder => uint256 amountFunded) public addressToAmountFunded;

    address public immutable OWNER;
    constructor() {
        OWNER = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == OWNER, "not the owner");
        _;
    }

    //There are gonna be two functions fund() and withdraw()

    function fund() public payable {
       
       require( msg.value.getConversionRate() >= MINI_USD, "You didn't send enough ETH");
       funders.push(msg.sender);
       addressToAmountFunded[msg.sender]= addressToAmountFunded[msg.sender] + msg.value;
    }

    function withdraw() public onlyOwner {
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }

    // reseting the array
    funders = new address[](0);
    
    //sending ether from a contract
    //transfer
    //send
    //call
    
    // //transfer
    // payable(msg.sender).transfer(address(this).balance);

    // //send
    // bool sendSuccess = payable(msg.sender).send(address(this).balance);
    // require(sendSuccess, "Send failed");

    //cal
    (bool callSuccess,)= payable(msg.sender).call{value:address(this).balance}("");
    require(callSuccess, "Call Failed");
    }

    receive() external payable { 
        fund();
    }

    fallback() external payable { 
        fund();
    }
   
}