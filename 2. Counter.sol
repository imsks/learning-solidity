// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Counter {
    uint256 public count;

    // Get count
    function get() public view returns (uint256) {
        return count;
    }

    // Increment count
    function inc() public {
        count += 1;
    }

    // Decrement count
    function dec() public {
        count -= 1;
    }
}
