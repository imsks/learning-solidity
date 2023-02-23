// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract IfElse {
    uint256 public number = 5;

    function withIfElse() public view returns (uint256 result) {
        if (number < 10) {
            return 10;
        } else if (number < 20) {
            return 20;
        } else {
            return 0;
        }
    }
}
