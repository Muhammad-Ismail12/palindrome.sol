//SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract Token{
    mapping(address => uint256) balances;

    string tokenName;
    string tokenSymbol;
    uint256 decimals;
    uint256 totalSupply;

    constructor(){
        tokenName = "Tracker";
        tokenSymbol = "TRC";
        totalSupply = 100000 * 10 ** 9;
        decimals = 9;
        balances[msg.sender] = totalSupply;
    }
    
    function _totalSupply() public view returns(uint256){
        return totalSupply;
    }

    function transfer(address to , uint256 amount) public{
        balances[to] += totalSupply;
        balances[msg.sender] -= totalSupply;
    }

    function getbalance(address owner) public view returns(uint256){
        return address(owner).balance;
    }
}
