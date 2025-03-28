# CoinContract

A Solidity-based smart contract for creating and managing a custom cryptocurrency on the Ethereum blockchain. This project implements a basic token system with minting and transfer functionalities, designed for educational purposes and as a starting point for more complex token implementations.

## Project Overview

`CoinContract` provides a simple yet functional token contract (`Coin.sol`) written in Solidity. It allows a designated minter (the contract deployer) to create new tokens and enables users to transfer tokens between addresses. The contract includes essential features like balance tracking, total supply management, and event logging for transparency, making it a great example for learning Ethereum smart contract development.

### Key Features
- **Minting**: Only the contract deployer (minter) can mint new tokens and assign them to any address.
- **Token Transfer**: Users can transfer tokens to other addresses, with checks for sufficient balance.
- **Balance Inquiry**: Anyone can query the token balance of any address.
- **Event Logging**: Emits events for minting and transfers to ensure transparency and traceability.
- **Error Handling**: Includes a custom error for insufficient balance during transfers, improving user experience and debugging.

## Contract Details

- **Solidity Version**: `^0.8.26`
- **License**: MIT
- **Contract Name**: `Coin`
- **State Variables**:
  - `minter`: The address of the contract deployer, who has the sole authority to mint new tokens.
  - `balances`: A mapping to track the token balance of each address.
  - `totalSupply`: Tracks the total number of tokens minted.
- **Functions**:
  - `mint(address receiver, uint256 amount)`: Mints new tokens to a specified address (only callable by the minter).
  - `send(address receiver, uint256 amount)`: Transfers tokens from the sender to another address, with balance and amount validations.
  - `balanceOf(address account)`: Returns the token balance of a given address.
- **Events**:
  - `Minted(address receiver, uint256 amount)`: Emitted when new tokens are minted.
  - `Sent(address from, address to, uint256 amount)`: Emitted when tokens are transferred.

## Getting Started

### Prerequisites
- [Solidity](https://soliditylang.org/) compiler (`^0.8.26`)
- An Ethereum development environment, such as:
  - [Remix IDE](https://remix.ethereum.org/) (for quick testing and deployment)
  - [Hardhat](https://hardhat.org/) or [Truffle](https://trufflesuite.com/) (for advanced development and testing)

### Installation
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/EmadXYZ/CoinContract.git 
