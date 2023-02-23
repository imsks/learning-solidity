// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Payable {
    event FundReceived(address sender, uint256 amount);

    function receiveFunds() public payable {
        emit FundReceived(msg.sender, msg.value);
    }
}

contract Transaction is Payable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function testPayable() public {
        Payable.receiveFunds({
            from: address(this),
            value: Web3.utils.toWei("1", "ether")
        });
    }
}
