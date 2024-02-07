//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract GlobalVariables { 
    function globalVar() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum); 
    }
}

//insights here
//msg.sender represents the account's address that is making calls to or initiating the smart contract.
//block.timestamp represents the timestamp at the moment a block is mined, expressed in seconds since the Unix epoch.
//block.number represents the block number that is in use.