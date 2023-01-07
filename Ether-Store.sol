// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract EtherStore {
    address public owner;
    uint256 private balance;

    constructor(address _owner) payable {
        owner = _owner;
        balance += msg.value;
    }

    fallback() external payable {
        balance += msg.value;
    }

    receive() external payable {
        balance += msg.value;
    }

    function depozit() external payable {
        balance = msg.value;
    }

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "You're not the owner.");
        require(_amount <= balance, "Insufficient funds.");
        balance -= _amount;
        payable(owner).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return balance;
    }
}
