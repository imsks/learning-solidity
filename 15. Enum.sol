// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Enums {
    enum Status {
        Pending,
        Shipped,
        Delivered
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Get current status
    function get() public view returns (Status) {
        return status;
    }

    // Set status
    function set(Status _status) public {
        status = _status;
    }

    // Update to Specific status
    function cancel() public {
        status = Status.Shipped;
    }
}
