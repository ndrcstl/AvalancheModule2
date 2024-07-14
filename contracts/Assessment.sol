// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol"

contract Assessment {
    address payable public owner;
    uint256 public balance;
    uint256 public interestAmount; 

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event InterestPaid(uint256 amount);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
        interestAmount = 0;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function deposit(uint256 _amount) public payable {
        uint _previousBalance = balance;

        // make sure this is the owner
        require(msg.sender == owner, "You are not the owner of this account");

        // perform transaction
        balance += _amount;

        // assert transaction completed successfully
        assert(balance == _previousBalance + _amount);

        // emit the event
        emit Deposit(_amount);
    }

    function withdraw(uint256 _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        require(balance >= _withdrawAmount, "Insufficient balance");

        uint _previousBalance = balance;

        // withdraw the given amount
        balance -= _withdrawAmount;

        // assert the balance is correct
        assert(balance == (_previousBalance - _withdrawAmount));

        // emit the event
        emit Withdraw(_withdrawAmount);
    }

    function payInterest(uint256 _paymentAmount) public onlyOwner {
        require(balance <= _paymentAmount, "Insufficient balance to pay interest");
        interestAmount = balance * 2 / 100;
        balance += interestAmount;
        emit InterestPaid(interestAmount);
    }

}
