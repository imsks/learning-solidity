// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/**
Reading and Writing to a State Variable
    To write or update a state variable you need to send a transaction.

On the other hand, you can read state variables, for free, without any transaction fee.
 */

contract ReadWriteStateVariables {
    uint256 public num = 123;

    // Setting the value to state variable
    function set(uint256 _num) public {
        num = _num;
    }

    // Getting the state variable
    function get() public view returns (uint256) {
        return num;
    }
}
