// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        console.log("Hi");
        vm.broadcast();
    }
}
