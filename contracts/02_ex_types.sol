// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonDataStorageV2 {
    string public name;
     uint private age;
     bool internal brazilian;

    constructor() {
     name = "Jeremias";
     age = 10;
     brazilian = true;
    }

    function setName(string memory _name) public {
        name = _name;

    }

    function setAge(uint _age) public {
        age = _age;
    }

     function getAge() public view returns(uint) {
        return age;
    }

    function setNationality(bool _br) public {
        brazilian = _br;
    }


    function getNationality() public view returns(bool) {
       return brazilian;
    }

    function addValues(uint _value1, uint _value2) internal pure returns(uint){
        return _value1 + _value2;
    }

    function incrementAge() external  {
        age = addValues(age,1);
    }
    




}