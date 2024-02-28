// Midtermlab Activity 2 : Solidity Basics II
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
   // 1. Implement the Ownable contract
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the current owner can call this function");
        _;
    }
    // 2. Develop a function to transfer ownership
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid new owner address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}
    // 3. Create a contract MyContract that inherits from  Ownable
contract MyContract is Ownable {
    uint256 public someValue;
    
    function setSomeValue(uint256 newValue) public onlyOwner {
        someValue = newValue;
    }
}