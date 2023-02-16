// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/**
Ether and Wei
Transactions are paid with ether.

Similar to how one dollar is equal to 100 cent, one ether is equal to 1018 wei.
 */

contract EtherUnits {
    uint256 public oneWei = 1 wei;
    bool public isOneWei = oneWei == 1;

    uint256 public oneEther = 1 ether;
    bool public isOneEther = oneEther == 10e18;
}
