// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract ContractA {
    string public name;

    function getName() public view returns(string memory) {
        return name;
    }
}

contract ContractC is ContractA {
    // 1. Wrong way
    // string public name = "New Contract from C"; Throws "Identifier already declared."

    // 2. Correct way
    constructor() {
        name = "New Varible from Constructor";
    }
}