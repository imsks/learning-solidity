// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Base {
    // 1. Public functions
    // => Can be called -
    // - inside this contract
    // - inside contracts that inherit this contract
    // - by other contracts and accounts
    function makePublicFunction() public pure returns(string memory) {
        return "Public function called";
    }

    // 2. Private functions
    // => Can only be called from inside this contract.
    // => Contracts that inherit this contract cannot call this function.
    function makePrivateFunction() private pure returns(string memory) {
        return "Private function called";
    }

    // 3. Internal functions
    // => Can be called
    // - inside this contract
    // - inside contracts that inherit this contract
    function makeInternalFunction() internal pure returns(string memory) {
        return "Internal function called";
    }

    // 4. External functions
    // Can only be called by other contracts and accounts
    function makeExternalFunction() external pure returns(string memory) {
        return "External function called";
    }

    // Test functions
    string public publicResult = makePublicFunction();
    string private privateResult = makePrivateFunction();
    string internal internalResult = makeInternalFunction();
    // string public externalResult = makeExternalFunction(); // Throws "Undeclared identifier" => External can ONLY be called from Other Contracts & Accounts

    // Declaring variables
    string public myPublicVariable;
    string private myPrivateVariable;
    string internal myInternalVariable;
    // string external myExternalVariable; // Throws "Expected identifier but got 'external'" => No "external" keyword for Variable declaration
}

contract Child is Base {
    // Called external function
    function testExternalFunction() public pure returns(string memory) {
        return makeInternalFunction();
    }

    // Called internal function
    function testInternalFunction() public pure returns(string memory) {
        return makeInternalFunction();
    }
}