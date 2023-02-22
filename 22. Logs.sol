// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/**

Events allow logging to the Ethereum blockchain. Some use cases for events are:

Listening for events and updating user interface
A cheap form of storage

 */

contract Logs {
    event Log(address sender, string message);

    function doSomething() public {
        emit Log(msg.sender, "Logging");
    }
}
