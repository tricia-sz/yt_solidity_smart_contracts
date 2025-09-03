// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    - Invoque um dos price feeds da rede ChainLink para realizar uma leitura do preço do ETH em relação ao USD.
    - Para saber qual o endereço do último contrato publuicado em uma testnet pública, pesquise na internet.
    - Sempre que uma nova leitura for feita no oráculo, deve-se emitor um evento.

*/

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

