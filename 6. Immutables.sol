// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/**
Immutable
Immutable variables are like constants. 
Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
 */

contract Immutables {
    uint256 public immutable FAV_NO;

    constructor(uint256 favNo) {
        FAV_NO = favNo;
    }
}
