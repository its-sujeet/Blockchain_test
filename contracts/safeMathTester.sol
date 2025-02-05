// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract safeMathTester{
    uint8 bigNumber = 255;

    function add() public {

    unchecked{bigNumber = bigNumber + 1;}


    }
}


