// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
    Desenvolver um smart contract que simule uma "Peticao online".
    Seu contrato deve coletar exatamente 3 nomes.
    Ao coletar 3 nomes, sua peticao deve sinalizar que o numero de ASSINATURAS esta completo.

*/

// Estrutura de dados liner array
contract Petition {
    string[3] private names;

    uint256 public nameCount;

    constructor(){
        nameCount = 0;
    }

    function registerName(string memory _name) public  {
        if(nameCount <3){
            names[nameCount] = _name;
            nameCount++;
        }
    }

    function getName(uint256 _id) public view returns (string memory){
        if(_id < 3 ){
            return names[_id];
        }
        return "Erro: index out of bounds";
    }

    function isPetitionFull() public view returns(bool) {
        return nameCount >= 3;
    }
}
