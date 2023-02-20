// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/**
Variables
There are 3 types of variables in Solidity

local
    declared inside a function
    not stored on the blockchain
state
    declared outside a function
    stored on the blockchain
global (provides information about the blockchain)
 */

contract Variables {
    string public text = "This is state variable"; // State Variable | Saved on Blockchain

    function doSomething() public view {
        uint256 num = 123; // Local Variable | Not saved on Blockchain

        uint256 timestamp = block.timestamp; // Global variables
        address sender = msg.sender; // Global variables
    }
}
