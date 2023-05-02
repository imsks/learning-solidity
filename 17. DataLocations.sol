// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract DataLocations {
    // 1. Storage => Variable is a state variable (store on blockchain)
    string[] public users;
    mapping(uint256 => bool) usersActive;
    struct User {
        string name;
        uint8 age;
    }
    mapping(uint256 => User) public usersBalance;

    // 2. Memory => Variable is in memory and it exists while a function is being called
    // used to temporarily store variables and their values
    // used for both function declaration parameters as well as within the function logic
    // It is mutable
    // It is non-persistent (the value does not persist after the transaction has completed)
    function loopUsers(User[] memory _users) public {}

    // 3. Calldata => Special data location that contains function arguments
    // only available for external function call parameters
    // This is the cheapest location to use, but it has a limited size. In particular, that means that functions may be limited in their number of arguments.
    // It can only be used for function declaration parameters (and not function logic)
    // It is immutable, non-persistent
    function voteUser(string calldata choice) public {}
}

// calldata is allocated by the caller, while memory is allocated by the callee.
