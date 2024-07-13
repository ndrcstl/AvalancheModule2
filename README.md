**Starter Next/Hardhat Project README**
=====================================

This is a Starter Next/Hardhat Project that includes a Solidity contract called `Assessment`. The contract allows users to deposit, withdraw, transfer, and earn interest on their balances.

**Getting Started**
-------------------

To get the project running on your computer, follow these steps:

1. Clone the GitHub repository.
2. Inside the project directory, open a terminal and type: `npm i`
3. Open two additional terminals in your VS Code.
4. In the second terminal, type: `npx hardhat node`
5. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy.js`
6. Back in the first terminal, type `npm run dev` to launch the front-end.
7. The project will be running on your localhost, typically at `http://localhost:3000`

**Contract Overview**
---------------------

The `Assessment` contract has the following functions:

### 1. `getBalance()`

Returns the current balance of the contract.

### 2. `deposit(uint256 _amount)`

Allows users to deposit a specified amount of Ether into the contract.

### 3. `withdraw(uint256 _withdrawAmount)`

Allows the owner of the contract to withdraw a specified amount of Ether from the contract.

### 4. `checkOwner()`

Returns the address of the contract owner.

### 5. `setNewOwner(address _newOwner)`

Allows the current owner to set a new owner for the contract.

### 6. `transfer(uint256 _amount, address _recipient)`

Allows the owner to transfer a specified amount of Ether to another address.

### 7. `getUserBalance(address _user)`

Returns the balance of a specified user.

### 8. `payInterest()`

Allows the owner to pay interest on the contract balance.

**Events**
----------

The contract emits the following events:

* `Deposit(uint256 amount)`: emitted when a user deposits Ether into the contract.
* `Withdraw(uint256 amount)`: emitted when the owner withdraws Ether from the contract.
* `Transfer(uint256 amount, address recipient)`: emitted when the owner transfers Ether to another address.
* `InterestPaid(uint256 amount)`: emitted when the owner pays interest on the contract balance.

**Error Handling**
-----------------

The contract uses a custom error `InsufficientBalance` to handle cases where the user tries to withdraw more Ether than is available in the contract.
