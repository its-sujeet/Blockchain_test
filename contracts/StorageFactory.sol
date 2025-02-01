// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";


contract StorageFactory{
    SimpleStorage public  simplestorage;

    SimpleStorage[] public  simpleStorageArray;



    function createSimpleContract() public {
        simplestorage= new SimpleStorage();
        simpleStorageArray.push(simplestorage);

    }

    function fsstore(uint256 _index, uint256 _value) public {
        simpleStorageArray[_index].store(_value);


    } 

    function fsretrive(uint256 _index) public view  returns (uint256){
        return simpleStorageArray[_index].retrive();
    }


}