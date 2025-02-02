// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract FundMe{

    uint256 public minusd =5;

    function fund() public payable {

        require(msg.value > 1e18 , "Didn't send enough.");

    }
    function getprice() public {
        // addrress 0x694AA1769357215DE4FAC081bf1f309aDC325306


    }

    function getversion() public view returns (uint256)  {

        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

}

