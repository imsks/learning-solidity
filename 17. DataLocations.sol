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
    function loopUsers(User[] memory _users) public {}

    // 3. Calldata => Special data location that contains function arguments
    function voteUser(string calldata choice) public {}
}
