Lottery Smart Contract (Solidity)

This Solidity smart contract implements a decentralized lottery system on the Ethereum blockchain. It allows users to participate by sending a specified amount of Ether, with the winner selected randomly using a hashing function based on blockchain parameters. The contract is designed to be fair, transparent, and efficient.

Features
- Secure Participation: Users must send at least 1 Ether to enter.
- Fair Random Selection: Uses a hashing mechanism to determine the winner.
- Automated Payouts: The winner receives all funds in the contract balance.
- Manager-Controlled Operations: Only the manager can finalize and restart the lottery.
- Resettable for Future Rounds: Participants are cleared after a winner is chosen.

How It Works
- Deploy the contract on an Ethereum-compatible blockchain.
- Users send Ether to participate in the lottery.
- The contract ensures at least four participants before proceeding.
- The manager selects the winner using the random function.
- The winner automatically receives the entire contract balance.
- The contract resets for a new round.

Usage
- Deploy the contract using Remix or Hardhat.
- Call the participate() function to enter the lottery.
- The manager invokes pickwinner() when enough participants have joined.
- Funds are securely transferred to the winner.

This smart contract is designed for fairness and simplicity, making it easy to run decentralized lotteries without intermediaries.
