// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
 Desenvolver um smart contract que seja capaz de atribuir o ESTADO ESCOLAR de 
 um estudante a partir de sua NOTa. o estado deve ser inicializado com "EMPTY",
 antes de qualquer interacao com o contrato.

 Quando uma nota for enviado ao contrado, ele deve atribuir o estado do aluno seguindo
 as seguintes regras:

 1 - Caso a nota seja maior ou igual  a 7, o estado deve ser "Aprovado";

 2 - Caso o contrário e a nota seja inferior, o estado é "Preprovado".
 3 - um caso especial de quando a pessoa reprova quando a nota é igual a zero. 
 estado "Zero"
*/

contract StudentNote {
    string public gradesStatus;
    constructor(){
        gradesStatus = "empty";
    }

    function updateGradeStatus(int _value) public {
        if(_value < 0 || _value > 10) {
            gradesStatus = "Nota invalida.";
        } else {
            if(_value >= 7) {
            gradesStatus = "Aprovado";
        } else {
            if(_value == 0 ) {
                gradesStatus = "Voce tirou zero";
            } else {
             gradesStatus = "Reprovado";

            }
        }
        }

    }
}