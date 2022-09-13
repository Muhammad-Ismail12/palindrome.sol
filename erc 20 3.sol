//SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract Token2{

    mapping(address => uint256) _balances;

        string public tokenName = "Tracker";
        string public tokenSymbol = "TRC";
        uint256 public decimals = 9;
        uint256 public totalSupply =  100000 * 10 ** 9;

    constructor(){
        _balances[msg.sender] = totalSupply;
    }

    function balanceOf(address account) public view returns(uint256){
        return _balances[account];
    }

    function transfer(address to , uint256 value) public{
        _balances[msg.sender] -= totalSupply;
        _balances[to] += totalSupply;
    }

    function check_balace(address account) public view returns(uint256){
        return _balances[account];
    } 
}
