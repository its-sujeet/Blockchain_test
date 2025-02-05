// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./priceConverter.sol";

contract FundMe{

    using priceConverter for uint256;




    uint256 public minusd =5 * 1e18;

    address [] public  funders;
    mapping (address => uint256) public  addresstoamountfunded;


    function fund() public payable {

        require(msg.value.getConversionRate() >= minusd , "Didn't send enough.");
        funders.push(msg.sender);
        addresstoamountfunded[msg.sender] = msg.value;


    }
    


}

