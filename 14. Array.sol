// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Array {
    uint256[] public myArray;
    uint256[] public mySecondArray = [1, 2, 3];
    uint256[3] public myFixedLengthArray = [4, 5, 6];

    // Pushing to array
    function push(uint256 number) public {
        myArray.push(number);
    }

    // Popping from array
    function pop() public {
        myArray.pop();
    }

    // Get array*
    // * => Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function get() public view returns (uint256[] memory) {
        return myArray;
    }
}
