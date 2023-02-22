// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Functions {
    // Return multiple values
    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, false, 2);
    }

    // Return named values
    function returnNamedValues()
        public
        pure
        returns (
            uint256 x,
            bool y,
            uint256 z
        )
    {
        return (1, true, 2);
    }

    // Assigned return values
    function assignedReturnValues()
        public
        pure
        returns (
            uint256 x,
            bool y,
            uint256 z
        )
    {
        x = 1;
        y = true;
        z = 5;
    }

    // Destructuring
    function destructuring()
        internal
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        (uint256 x, bool y, uint256 z) = returnMany();

        return (x, y, z);
    }
}
