# Metacrafters ATM
================

A decentralized ATM system built on Ethereum using Solidity.

## Contract

The contract is written in Solidity and deployed on the Ethereum blockchain. It allows users to deposit, withdraw, and set a new owner.

### Functions

* `constructor(uint initBalance)`: Initializes the contract with an initial balance.
* `getBalance()`: Returns the current balance of the contract.
* `deposit(uint _amount)`: Deposits Ether into the contract.
* `withdraw(uint _withdrawAmount)`: Withdraws Ether from the contract.
* `checkOwner()`: Returns the current owner of the contract.
* `setNewOwner(address _newOwner)`: Sets a new owner for the contract.

### Events

* `Deposit(uint256 amount)`: Emitted when Ether is deposited into the contract.
* `Withdraw(uint256 amount)`: Emitted when Ether is withdrawn from the contract.

### Custom Error

* `InsufficientBalance(uint256 balance, uint256 withdrawAmount)`: Thrown when attempting to withdraw more Ether than the contract balance.

## Frontend

The frontend is a simple React application that interacts with the contract using the Ethers.js library. It allows users to:

* Connect their MetaMask wallet
* Deposit and withdraw Ether
* Set a new owner

## Technical Details

* Contract written in Solidity 0.8.9
* Ethers.js library used for contract interaction

## License

This project is licensed under the UNLICENSED license.

## Contributing

Contributions are welcome! Please open a pull request to contribute to the project.

## Issues

If you encounter any issues, please open an issue on this repository.
