// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Loop {
    function run() public pure {
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }

            if (i == 5) {
                break;
            }
        }

        uint256 j = 0;
        while (j < 10) {
            j++;
        }
    }
}
