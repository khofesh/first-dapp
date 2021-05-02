//SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "hardhat/console.sol";

contract Token {
    string public name = "Fahmi Ahmad";
    string public symbol = "FA";
    uint256 public totalSupply = 10000;
    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}