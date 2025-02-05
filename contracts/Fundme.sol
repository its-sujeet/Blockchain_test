// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract FundMe{

    uint256 public minusd =5 * 1e18;

    address [] public  funders;
    mapping (address => uint256) public  addresstoamountfunded;


    function fund() public payable {

        require(getConversionRate(msg.value) > 1e18 , "Didn't send enough.");
        funders.push(msg.sender);
        addresstoamountfunded[msg.sender] = msg.value;
        

    }
    function getprice() public view returns(uint256){
        // addrress 0x694AA1769357215DE4FAC081bf1f309aDC325306

        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price, , ,) = priceFeed.latestRoundData();

        return uint256(price * 1e10);

    }

    function getversion() public view returns (uint256)  {

        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

    function getConversionRate(uint256 ethamount) public  view returns (uint256){
        uint256 ethprice = getprice();
        uint256 ethPriceInUsd = (ethprice * ethamount) / 1e18;
        return ethPriceInUsd;

    }


}

