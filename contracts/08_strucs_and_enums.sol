// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Ex:6 - STRUCTS and ENUMS 
    - Desenvolva um smart contract que seja capaz de armazenar o nome, 
    - idade e nacionalidade de uma pessoa BR em 3 var distintas.
    - Inicializar com a string "Jeremias" para o nome, 10 para idade e true para nacionalidade
    - O SC deve ser capaz, ainda, associar à pessoa, o estado de sua condição escolar, a saber: 
      Aprovado, reprovado ou Zero ou undefined
*/

contract Storage {
    enum Status {
        Zero,//0
        Approved,//1
        Reproved,//2
        Undefined//3
    }

    struct Person {
        string name; 
        uint256 age;
        bool brazilian;
        Status gradeStatus;
    }

    Person public p;

    constructor(){
        p.name = "Jeremias";
        p.age = 10;
        p.brazilian = true;
        p.gradeStatus = Status.Undefined;
    }

    function setName(string memory _name) public {
        p.name = _name;
    }

    function setAge(uint256 _age) public {
        p.age = _age;
    }

     function setBrazilian(bool _br) public {
        p.brazilian = _br;
    }

    function updateGradeStatus(uint256 _value) public {
        if(_value <= 10 && _value >=0){
            if(_value >=7 ){
            p.gradeStatus = Status.Approved;
            } else {
                if(_value == 0){
                    p.gradeStatus = Status.Zero;
                } else {
                    p.gradeStatus = Status.Reproved;
                }
            }

        } else  {
            p.gradeStatus = Status.Undefined;
        }
        
    }

}