//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
        uint256 public  favnum;

         struct people {
            uint256 favnum;
            string name;
         }

         people public suj = people({favnum : 75, name : "Arush"});

        function store (uint256 _favnum) public {
            favnum = _favnum;
            


        }
        function retrive() public view returns (uint){
            return favnum;
        }
        
}






