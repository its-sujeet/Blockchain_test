// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";


contract StorageFactory{
    SimpleStorage public  simplestorage;


    function createSimpleContract() public {
        simplestorage= new SimpleStorage();

    }



}