//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
        uint256 public  favnum;

        // struct people 

        function store (uint256 _favnum) public {
            favnum = _favnum;
            


        }
        function retrive() public view returns (uint){
            return favnum;
        }
        
}






