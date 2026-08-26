// SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract Day03 {

    // =========================
    // Default Values
    // =========================

    // Default value = 0
    uint public number;

    // Default value = false
    bool public isActive;

    // Default value = 0x0000000000000000000000000000000000000000
    address public userAddress;


    // =========================
    // Constant
    // =========================

    // Value is fixed and cannot be changed
    uint public constant MAX_USERS = 100;


    // =========================
    // Immutable
    // =========================

    // Value will be assigned in the constructor
    // and cannot be changed afterward
    uint public immutable START_VALUE;

    constructor() {
        START_VALUE = 50;
    }


    // =========================
    // State vs Local Variables
    // =========================

    // "number" above is a State Variable
    // because it is declared inside the contract
    // but outside any function.

    function myFunc() public {

        // Local Variable
        // Exists only inside this function
        uint localNumber = 10;
    }
}