// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/**

Modifiers are code that can be run before and / or after a function call.

Modifiers can be used to:

1. Restrict access
2. Validate inputs
3. Guard against reentrancy hack

 */

contract FunctionModifiers {
    address public owner;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    // Checks if the executor is owner of the contract or not
    modifier isOwner() {
        require(msg.sender == owner, "Not an owner");
        _;
    }

    // Checks if address is valid ie. No zero address
    modifier validAddress(address _address) {
        require(_address != address(0), "Not a valid address");
        _;
    }

    // Change owner
    function changeOwner(address _newAddress)
        public
        isOwner
        validAddress(_newAddress)
    {
        owner = _newAddress;
    }

    // Checks if function should run or not
    modifier shouldFunctionRun() {
        require(!locked, "Already running. Wait!");

        locked = true;
        _;
        locked = false;
    }

    function doSomething() public shouldFunctionRun {}
}
