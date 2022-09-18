// SPDX-License-Identifier: GPL-3.0
pragma solidity <0.9.0;

contract Fee{

    struct Registration{
        bool feespaid;
    }

    mapping (address => Registration) student;
    mapping(address => uint256) fees;

    function payfee() public payable{
        require(msg.value == 5 ether);
        fees[msg.sender] = msg.value;
    }

    function Check() public view returns(string memory){
        if(student[msg.sender].feespaid == true){
            return "Register";
        }
        else{
            return "Not Register";
        }
    }
}
