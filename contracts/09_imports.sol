// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/*
   I - Crie um contrato com funções para as operações aritiméticas de adição e subtração.
   II - Em outro arquivo fonte, cria uma biblíoteca que implemente as operações matemáticas  de multiplicação e divisão.
   III - Crie um terceiro smart contract em arquivo fonte distinto para que seja possivel invocar as funcionalidades de cada uma dos arquivos.

*/

import "contracts/0901_add_sub.sol";
import "contracts/0902_mult_div.sol";
contract MyContract {
    AritimeticaSimples sa;
    MultDiv md;

    constructor(){
        sa = new AritimeticaSimples();
        md = new MultDiv();
    }

    function testAdd(int256 v1, int256 v2) public view returns(int256) {
        int256 testA = sa.addInteiros(v1, v2);

        return testA;
    }


    function testMult(int256 v1, int256 v2) public view  returns(int256) {
        int256 testM = md.multInteiros(v1, v2);
        return testM;
    }
}