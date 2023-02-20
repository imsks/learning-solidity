// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract NestedMapping {
    mapping(address => mapping(uint256 => bool)) myNestedMap;

    // Set mapping
    function set(
        address _addr,
        uint256 _counter,
        bool __status
    ) public {
        myNestedMap[_addr][_counter] = __status;
    }

    // Get mapping
    function get(address _addr, uint256 _counter) public view returns (bool) {
        return myNestedMap[_addr][_counter];
    }

    // Remove mapping
    function remove(address _addr, uint256 _counter) public {
        delete myNestedMap[_addr][_counter];
    }
}
