//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
        uint256 favnum;

        mapping (string => uint) public  pepolist;


         struct people {
            uint256 favnum;
            string name;
         }

        people[] public peoplelist;


        //  people public suj = people({favnum : 75, name : "Arush"});

        function store (uint256 _favnum) public {
            favnum = _favnum;
            


        }
        function retrive() public view returns (uint){
            return favnum;
        }
        

        function addpeople(string memory _name, uint256 _value) public {
            peoplelist.push(people({favnum : _value, name: _name}));
            pepolist[_name] = _value;
            

        }

}






