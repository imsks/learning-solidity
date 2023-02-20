// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Mapping {
    mapping(address => uint256) public myMap;

    // Set mapping
    function set(address _addr, uint256 _counter) public {
        myMap[_addr] = _counter;
    }

    // Get mapping
    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    // Delete mapping
    function remove(address _addr) public {
        delete myMap[_addr];
    }
}
