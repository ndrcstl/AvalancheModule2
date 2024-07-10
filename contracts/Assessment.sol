// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Assessment {
    address payable public owner;
    uint256 public balance;
    mapping(address => uint256) public userBalances;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event Transfer(uint256 amount, address recipient);
    event InterestPaid(uint256 amount);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function deposit(uint256 _amount) public payable {
        uint _previousBalance = balance;
        balance += _amount;
        assert(balance == _previousBalance + _amount);
        emit Deposit(_amount);
    }

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdraw(uint256 _withdrawAmount) public payable {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance(balance, _withdrawAmount);
        }
        balance -= _withdrawAmount;
        assert(balance == (_previousBalance - _withdrawAmount));
        emit Withdraw(_withdrawAmount);
        payable(owner).transfer(_withdrawAmount);
    }

    function checkOwner() public view returns (address) {
        return owner;
    }

    function setNewOwner(address _newOwner) public {
        require(msg.sender == owner, "You are not the owner of this account");
        owner = payable(_newOwner);
    }

    function transfer(uint256 _amount, address _recipient) public {
        require(msg.sender == owner, "You are not the owner of this account");
        require(balance >= _amount, "Insufficient balance");
        balance -= _amount;
        userBalances[_recipient] += _amount;
        emit Transfer(_amount, _recipient);
    }

    function getUserBalance(address _user) public view returns (uint256) {
        return userBalances[_user];
    }

    function payInterest() public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint256 interestAmount = 1;
        balance += interestAmount;
        emit InterestPaid(interestAmount);
    }
}
