// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract AritimeticaSimples {
    constructor() {}

    function addInteiros(int256 _valor1, int256 _valor2) public  pure returns (int256){
        return _valor1 + _valor2;
    }

    function subInteiros(int256 _valor1, int256 _valor2) public  pure returns (int256){
        return _valor1 - _valor2;
    }

}