// SPDX-License-Identifier: GPL-3.0
pragma solidity <0.9.0;

contract Map{

    mapping(address => uint) check;

    function deposit() public payable{
        require(msg.value >= 5 ether , "Amount must be 5 ether");
        check[msg.sender] = msg.value;
    }

    function getbalance() public view returns(uint){
        return address(this).balance;
    }

    function get_balance(address _address) public view returns(uint256){
        return check[_address];
    }
}
