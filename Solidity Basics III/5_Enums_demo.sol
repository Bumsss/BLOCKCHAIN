//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Enum {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this 
    function cancel() public {
        status = Status.Cancelled;
    }

    function accept() public {
        status = Status.Accepted;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}