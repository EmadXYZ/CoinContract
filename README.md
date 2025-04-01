# 💰 SimpleToken – A Minimal ERC-20 Style Token  

A **lightweight**, **gas-efficient**, and **fully on-chain** token contract built on **zkSync Sepolia Testnet**. This smart contract allows for **minting**, **transfers**, and **balance tracking** while ensuring security and efficiency.  

🔗 **Live Contract on zkSync**:  
[✅ View on zkSync Explorer](#link-to-contract) *(Coming Soon!)*  

---

## 📜 Overview  

- **Language:** Solidity (`^0.8.26`)  
- **Network:** zkSync Sepolia Testnet  
- **Purpose:** A **simple, gas-optimized token** with minting & transfers.  

---

## ⚡ Key Features  

✔ **Minter Role** – Only the contract creator can **mint new tokens**.  
✔ **Secure Transfers** – Users can safely send tokens to other addresses.  
✔ **Balance Tracking** – Anyone can query an address’s balance.  
✔ **Custom Errors** – Reduces gas fees by using `error InsufficientBalance()`.  
✔ **Optimized for zkSync** – Lower fees and faster transactions on **Layer 2**.  
✔ **Minimal & Efficient** – A **basic token model** without unnecessary overhead.  

---

## 🔍 Security Considerations  

- **Restricted Minting**: Only the **original contract deployer** can mint tokens.  
- **Safe Transfers**: Ensures balances are checked before executing transfers.  
- **Gas Optimization**: Uses **custom errors** to **reduce transaction costs**.  
- **Designed for zkSync**: Efficient **Layer 2** execution with low fees.  



---

## 📄 License  

This project is licensed under the **MIT License** – you're free to use, modify, and distribute it!  

📌 **Contributions are welcome! Feel free to fork, improve, and submit a pull request.** 🤝  


---

## 📥 Clone the Repository  

To get a local copy up and running, run the following command:  

```sh
git clone https://github.com/EmadXYZ/SimpleToken.git
```
