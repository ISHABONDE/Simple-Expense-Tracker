# 🏦 Simple Group Expense Tracker (Aptos Move)

## 📌 Description
The **Group Expense Tracker** is a simple on-chain smart contract built using the Aptos Move framework.  
It enables users to **track and manage shared expenses within a group** directly on the blockchain.  
Funds are securely transferred and recorded, ensuring transparency and accountability for group members.

---

## 🎯 Vision
Our vision is to create a **decentralized, trustless, and transparent** way for people to manage shared group expenses — whether for friends on a trip, roommates splitting bills, or community organizations pooling funds.  
By leveraging blockchain technology, every expense is **immutable, auditable, and securely stored**.

---

## 🚀 Future Scope
- **Multiple Groups per Account**: Support tracking expenses for different groups simultaneously.  
- **Expense Categories**: Add labels like "Food", "Travel", "Utilities", etc.  
- **Expense Splitting**: Automatically calculate how much each member owes or is owed.  
- **Web/App UI**: A frontend for non-technical users to interact with the contract.  
- **Multi-token Support**: Accept and track payments in various Aptos-based tokens.

---

## 📜 Contract Details
- **Module Name**: `MyModule::GroupExpenseTracker`
- **Deployed Address**: `0x86b16eda4b56018b4bf1102aa037633a7afd1f8ab24cacdc415ceb11dc492d53`
- <img width="1919" height="843" alt="image" src="https://github.com/user-attachments/assets/9e97f6fa-5166-4f40-93d0-65713efa9169" />
  
- **Functions**:
  1. `create_group(owner: &signer)` → Initializes a new group expense tracker for the owner.
  2. `add_expense(member: &signer, group_owner: address, amount: u64)` → Adds an expense and transfers funds from the member to the group.

---

### 🛠 How It Works
1. **Create Group** → The owner initializes a group expense tracker on-chain.  
2. **Add Expense** → Members can send expense amounts to the group owner, and the smart contract updates the total expenses.  

---


