# Solidity-Lottery-smart_contract
### **Lottery Smart Contract (Solidity)**
This project implements a **decentralized lottery system** using Solidity on the Ethereum blockchain. It allows participants to enter the lottery by sending a specified amount of Ether, with the winner selected randomly using a hashing function based on blockchain parameters.
#### **Features:** -
 Secure participation with validation checks. - Fair winner selection using a random function. - Automated fund transfer to the winner. - Managed by a designated contract owner. - Efficient data reset for multiple rounds.
#### **Usage:** 
1. Deploy the contract on an Ethereum-compatible blockchain.
2. Users participate by sending **at least 1 Ether** to the contract.
3. The contract owner (manager) selects the winner when **at least 4 participants** have entered.
4. The winner receives the entire contract balance automatically.
5. The lottery resets for the next round. 
