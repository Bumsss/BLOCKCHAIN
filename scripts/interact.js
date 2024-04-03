const API_URL = process.env.API_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;
const CONTRACT_ADDRESS = process.env.CONTRACT_ADDRESS;

// For Hardhat
const contract = require("../artifacts/contracts/HelloWorld.sol/HelloWorld.json");

console.log(JSON.stringify(contract.abi));

// interact.js
const ethers = require("ethers");

// provider
const alchemyProvider = new ethers.providers.JsonRpcProvider(API_URL);

// signer
const signer = new ethers.Wallet(PRIVATE_KEY, alchemyProvider);

// contract
const helloWorldContract = new ethers.Contract(
  CONTRACT_ADDRESS,
  contract.abi,
  signer
);

async function main() {
  const message = await helloWorldContract.message();
  console.log("The message is: " + message);

  console.log("Updating the message...");
  const tx = await helloWorldContract.update("6BCHAIN UPDATED MESSAGE!");
  await tx.wait();

  const newMessage = await helloWorldContract.message();
  console.log("The new message ios: " + newMessage);
}
main();
