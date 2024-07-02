# Assessment Contract and React App

This repository contains a simple Ethereum contract and a React app that interacts with it.

## Contract

The contract is called `Assessment` and it has the following functionality:

### Functions

* `constructor(uint initBalance)`: Initializes the contract with a specified balance and sets the owner to the deployer.
* `getBalance()`: Returns the current balance of the contract.
* `deposit(uint _amount)`: Allows the owner to deposit a specified amount of Ether into the contract.
* `withdraw(uint _withdrawAmount)`: Allows the owner to withdraw a specified amount of Ether from the contract.
* `transfer(address _recipient, uint _amount)`: Allows the owner to transfer a specified amount of Ether to a specified recipient.

### Events

* `Deposit(uint256 amount)`: Emitted when a deposit is made.
* `Withdraw(uint256 amount)`: Emitted when a withdrawal is made.

### Custom Error

* `InsufficientBalance(uint256 balance, uint256 withdrawAmount)`: Thrown when a withdrawal is attempted with insufficient balance.

## React App

The React app is a simple ATM interface that allows users to interact with the `Assessment` contract. It has the following features:

* Connects to the user's MetaMask wallet and retrieves their account address.
* Displays the user's account address and balance.
* Allows the user to deposit, withdraw, and transfer Ether from the contract.

## Usage

1. Install MetaMask and create an account.
2. Deploy the contract using the `deploy.js` script.
3. Open the app in a web browser.
4. Connect to your MetaMask wallet and select the account that you want to use.
5. The app will display your account address and balance.
6. You can deposit, withdraw, and transfer Ether from the contract using the buttons on the app.

## Note

This is a simple example and should not be used in production without further testing and security auditing.
