// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Desenvolva um smart contract estritamente matematico que calcule o resultado FATORIAL de um numero N.
     (ele mesmo multiplicado por antecessores)
     - Utilize lacos de repeticao

*/


contract Fatorial {
    function fat(uint256 _numero) public pure returns (uint256) {
        uint256 i;
        uint256 f = 1;
        // estrutura de laco FOR
        for (i = 1; i <= _numero; i++){
             f = f * i;
        }
        return f;
    }

     function fatwhile(uint256 _numero) public pure returns (uint256) {
        uint256 i = 1;
        uint256 f = 1;

        while (i <= _numero){
            f = f * i;
            i++;
        }

        return f;
        
    }

}



