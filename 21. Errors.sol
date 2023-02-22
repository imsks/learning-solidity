// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Errors {
    // Require should be used to validate conditions such as:
    // - inputs
    // - conditions before execution
    // - return values from calls to other functions
    function testRequire(uint256 _number) public pure {
        require(_number > 10, "Number is greater than 10");
    }

    // Revert is useful when the condition to check is complex.
    function testRevert(uint256 _number) public pure {
        if (_number > 10) {
            revert("Input is greater than 10");
        }
    }

    uint256 public number;

    // Assert should only be used to test for internal errors.
    function testAssert() public view {
        assert(number > 10);
    }

    // Custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdrawAmount(uint256 _withdrawAmount) public view {
        uint256 balance = address(this).balance;

        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}
