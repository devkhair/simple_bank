// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MiniBank {
    uint256 public balance;

    constructor() {
        balance = 0;
    }

    function addToMoney(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        balance += amount;
    }


    function withdrawMoney(uint256 amount) public {
        assert(balance >= amount);
        balance -= amount;
    }


    function resetBalance() public {
        if (balance > 0) {
            balance = 0;
        }
        else{
            revert("Balance already zero");
        }
    }
}
