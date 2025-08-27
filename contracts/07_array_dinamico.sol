// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/*
    - Desenvolver um smart contract que simule uma "Peticao online".
    - Seu contrato deve coletar exatamente 3 nomes.
    - Ao coletar 3 nomes, sua peticao deve sinalizar que o numero de ASSINATURAS esta completo.
    - Para cada nome adcionado é preciso MAPEAR o estado do nome junto a peticao.
    - Tal estado é composto de  uma palavra que pode ser alterada por qualquer user.
    - O respectivo estado deve inicializar com o dado undefined.
    - Adcionar status para cada nome adcionado.

*/

contract Petition {
    string[3] private names;
    string[] private extraNames;

    uint256 public nameCount;

    mapping(string => string) public status;

    constructor(){
        nameCount = 0;
    }

    function registerName(string memory _name) public  {
        if(nameCount < 3){
            names[nameCount] = _name;
            
        } else {
            extraNames.push(_name);
        }
        status[_name] = "undefined";
        nameCount++;
    }

    function getName(uint256 _id) public view returns (string memory){
        if(_id < 3 ){
            return names[_id];
        } else {
            return extraNames[_id-3];

        }
    }

    function isPetitionFull() public view returns(bool) {
        return nameCount >= 3;
    }

    function changestatus(string memory _name, string memory _status) public {
       status[_name] = _status;
    }
}