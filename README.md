**Starter Next/Hardhat Project README**
=====================================

This is a Starter Next/Hardhat Project that includes a Solidity contract called `Assessment`. The contract allows the owner to deposit, withdraw, and earn interest on their balances.

**Getting Started**
-------------------

To get the project running on your computer, follow these steps:

1. Inside the project directory, open a terminal and type: `npm i`
2. Open two additional terminals in your VS Code.
3. In the second terminal, type: `npx hardhat node`
4. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy.js`
5. Back in the first terminal, type `npm run dev` to launch the front-end.
6. The project will be running on your localhost, typically at `http://localhost:3000`

**Contract Overview**
---------------------

The `Assessment` contract has the following functions:

### 1. `getBalance()`

Returns the current balance of the contract.

### 2. `deposit(uint256 _amount)`

Allows the owner to deposit a specified amount of Ether into the contract.

### 3. `withdraw(uint256 _withdrawAmount)`

Allows the owner to withdraw a specified amount of Ether from the contract.

### 4. `payInterest()`

Allows the owner to pay interest on the contract balance. The interest rate is 2% of the current balance.

**Events**
----------

The contract emits the following events:

* `Deposit(uint256 amount)`: emitted when the owner deposits Ether into the contract.
* `Withdraw(uint256 amount)`: emitted when the owner withdraws Ether from the contract.
* `InterestPaid(uint256 amount)`: emitted when the owner pays interest on the contract balance.

**Error Handling**
-----------------

The contract uses the `require` statement to handle cases where the user tries to perform an action without being the owner, or tries to withdraw more Ether than is available in the contract. It also uses the `assert` statement to ensure that the balance is updated correctly after each transaction.
