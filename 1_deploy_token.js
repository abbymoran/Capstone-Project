// migrations/1_deploy_token.js

const Token = artifacts.require("Token");

module.exports = async function(deployer, network, accounts) {
    const initialSupply = web3.utils.toWei("1000000", "ether"); // Mint 1 million tokens initially
    await deployer.deploy(Token, initialSupply); // Deploy contract with initial supply
    const token = await Token.deployed();
    console.log("Token deployed at address:", token.address);
};
