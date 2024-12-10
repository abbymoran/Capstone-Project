// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28; // Update to match Token.sol version

import "./Token.sol"; // Assuming Token.sol is in the same directory

contract InvestmentPlatform {
    Token public token; // Declare the Token contract
    
    // Constructor that accepts the token contract address
    constructor(address _tokenAddress) {
        token = Token(_tokenAddress); // Initialize token contract
    }

    // Function to invest by transferring tokens from the sender to the platform
    function invest(uint256 amount) public {
        // Ensure that the user has approved the contract to spend tokens on their behalf
        require(token.allowance(msg.sender, address(this)) >= amount, "Insufficient allowance");
        
        // Perform the token transfer
        bool success = token.transferFrom(msg.sender, address(this), amount);
        
        // Ensure that the transfer was successful
        require(success, "Transfer failed");
    }
}