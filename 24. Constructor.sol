// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract ContractA {
    string public stringA;

    constructor(string memory _text) {
        stringA = _text;
    }
}

contract ContractB {
    string public stringB;

    constructor(string memory _text) {
        stringB = _text;
    }
}

// 2 Ways to call Parent constructor

// 1. Pass the parameters here in the inheritance list
contract ContractC is ContractA("String A"), ContractB("String B") {

}

// 2. Pass the parameters here in the constructor

// Parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract.
contract ContractD is ContractA, ContractB {
    constructor() ContractA("String A") ContractB("String B") {}
}
