// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtendedStorage is SimpleStorage {

    function store (uint256 _value) public override {
        favnum = _value + 5; 

    }
    


}