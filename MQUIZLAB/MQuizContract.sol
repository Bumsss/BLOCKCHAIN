// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public hrsRate;
    uint256 public hrsWorked;
    uint256 public age;

    modifier onlyOwner(){
        require(msg.sender == owner, "Callable only by the contract's owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint256 _age) external onlyOwner {
        age = _age;
    }

    function setHrsWrk(uint256 _hrsWorked) external onlyOwner {
        require(_hrsWorked > 0, "Hours worked must be larger than 0.");
        hrsWorked = _hrsWorked;
    }

    function setRate(uint256 _hrsRate) external onlyOwner {
        require(_hrsRate > 0, "Hours rate must be greater than 0.");
        hrsRate = _hrsRate;
    }

    function calculateTotSal() external onlyOwner view returns (uint256){
        require(hrsRate > 0 && hrsRate > 0, "Hourly rate or hours worked is zero. Reverted the transaction.");
        return hrsRate * hrsWorked;
    }
}