// SPDX-License-Identifier: UNLICENSED
// HI Yoda 0203 02
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    event SetNumber(address changer, uint256 current);
    event Increment(address changer, uint256 current);

    constructor(uint256 n) {
        number = n;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
        emit SetNumber(msg.sender, number);
    }

    function increment() public {
        number++;
        emit Increment(msg.sender, number);
    }
}
