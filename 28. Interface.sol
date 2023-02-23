// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

/*

Interface - Used to define a standard set of functions that can be implemented by other contracts.

    - cannot have any functions implemented
    - can inherit from other interfaces
    - all declared functions must be external
    - cannot declare a constructor
    - cannot declare state variables

*/

interface Wallet {
    function getBalance(address _address) external view returns (uint256);
}

/*
The advantage of using an interface is that it allows different contracts to communicate with each other using a standardized set of functions, 
even if they are implemented differently. 
For example, a contract might define an interface for a token contract, 
allowing other contracts to interact with it using the standard functions defined in the interface, 
regardless of how the token contract is implemented.

*/
contract Transaction is Wallet {
    function getBalance(address _address) external view returns (uint256) {
        return _address.balance;
    }
}
