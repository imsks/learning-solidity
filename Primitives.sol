// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Primitives {
    // Boolean
    bool public isTrue = false;

    // Intergers
    uint8 public u8 = 8;
    uint256 public u = 256;
    uint256 public u256 = 256;

    // Negative integers
    int8 public i8 = -8;
    int256 public i256 = -256;
    int256 public i = -256;

    // Address
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
