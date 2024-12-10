const Token = artifacts.require("Token");
const InvestmentPlatform = artifacts.require("InvestmentPlatform");

module.exports = async function(deployer) {
  // Define the initial supply (for example, 1 million tokens with 18 decimals)
  const initialSupply = web3.utils.toWei('1000000', 'ether'); // 1 million tokens in smallest unit (Wei)

  // Deploy the Token contract with the initial supply
  await deployer.deploy(Token, initialSupply);

  // Get the deployed Token contract instance
  const token = await Token.deployed();

  // Deploy the InvestmentPlatform contract with the Token address as the constructor argument
  await deployer.deploy(InvestmentPlatform, token.address);
};

