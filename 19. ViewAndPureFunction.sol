// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract ViewAndPureFunction {
    uint256 public x = 1;

    // 1. View => Reads from state but doesn't modify
    function doSomething(uint256 y) public view returns (uint256 sum) {
        sum = x + y;
    }

    // 2. Pure => Neither Modifies nor Reads from state
    function doSomethingElse(uint256 i, uint256 j)
        public
        pure
        returns (uint256 result)
    {
        result = i + j;
    }
}
