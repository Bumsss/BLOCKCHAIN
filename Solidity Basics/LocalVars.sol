// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external{
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;
        i = 123;
        b = true;
        myAddress = address(1);
    }
}

//insights here
//uint is only capable of representing whole numbers that are not negative because it is an unsigned integer data type.
//bool is a type of boolean data that only accepts true or false as values.
//address is a type of data that Ethereum addresses are stored in.