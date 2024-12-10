// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleStorage {
    uint256 public storedData;

    // Constructor to initialize the storage value
    constructor(uint256 initialValue) {
        storedData = initialValue;
    }

    // Function to set the value
    function set(uint256 x) public {
        storedData = x;
    }

    // Function to retrieve the value
    function get() public view returns (uint256) {
        return storedData;
    }
}