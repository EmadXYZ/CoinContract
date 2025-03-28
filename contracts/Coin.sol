// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Coin {
    // The minter address is the only one allowed to mint new coins.
    address public minter;

    // Mapping to store the balance of each account.
    mapping(address => uint256) public balances;

    // Event emitted when a transfer occurs.
    event Sent(address from, address to, uint256 amount);

    // Total supply of minted coins.
    uint256 public totalSupply;

    // Event emitted when new coins are minted.
    event Minted(address receiver, uint256 amount);

    // Constructor sets the creator as the minter (only one allowed to mint).
    constructor() {
        minter = msg.sender;
    }

    // Mints new coins and assigns them to the specified receiver.
    // Only the contract creator (minter) can call this function.
    function mint(address receiver, uint256 amount) public {
        require(msg.sender == minter, "Only minter can call this"); // Restrict to minter
        balances[receiver] += amount;  // Increase receiver's balance
        totalSupply += amount;  // Update total supply
        emit Minted(receiver, amount); // Emit Minted event
    }

    // Custom error for insufficient balance during transfers.
    error InsufficientBalance(uint256 requested, uint256 available);

    // Transfers an amount of coins from the sender to the receiver.
    // Ensures the sender has enough balance before transferring.
    function send(address receiver, uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero"); // Ensure valid transfer amount
        require(amount <= balances[msg.sender], InsufficientBalance(amount, balances[msg.sender])); // Check sender balance

        balances[msg.sender] -= amount; // Deduct from sender's balance
        balances[receiver] += amount; // Add to receiver's balance
        emit Sent(msg.sender, receiver, amount); // Emit Sent event
    }

    // Returns the balance of a specific account.
    function balanceOf(address account) public view returns (uint256) {
        return balances[account]; // Return the balance of the given address
    }
}
