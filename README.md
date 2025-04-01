# 💰 SimpleToken – A Minimalistic On-Chain Token  

A **lightweight**, **efficient**, and **gas-optimized** on-chain token for transferring value on **zkSync**. This contract allows for **minting, sending, and tracking balances** in a straightforward way.  

🔗 **Live Contract on zkSync**:  
[✅ View on zkSync Explorer](https://sepolia.explorer.zksync.io/address/0xcdAc667d23C75f7E158A6BddD8BbeCB9e7aC7721#contract)  

---  

## 📜 Overview  

- **Language:** Solidity (`^0.8.26`)  
- **Network:** zkSync  
- **Purpose:** A **simple token** for tracking balances and performing direct transfers.  

---  

## ⚡ Key Features  

✔ **Minting Mechanism** – Only the creator (`minter`) can mint new tokens.  
✔ **Direct Transfers** – Users can send tokens securely without intermediaries.  
✔ **Balance Tracking** – Keeps track of each user's token balance.  
✔ **Gas Efficient** – Optimized for **low-cost transactions** on zkSync.  
✔ **Secure Transactions** – Includes error handling for insufficient balances.  

---  

## 🔍 Security Considerations  

- **Controlled Minting:** Only the contract deployer (minter) can create new tokens.  
- **Balance Verification:** Prevents transfers if the sender lacks sufficient balance.  
- **Efficient Storage:** Uses a **mapping-based** balance system for efficiency.  

---  

## 📄 License  

This project is licensed under the **MIT License** – feel free to use, modify, and build upon it!  

📌 **Contributions are welcome! Fork the repo and submit your improvements.** 🚀  

---  

## 🔧 Clone & Use  

```bash
git clone https://github.com/EmadXYZ/SimpleToken.git
```
