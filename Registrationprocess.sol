// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract StudentRegister{

    struct student{
        bool feespaid;
    }
    
    mapping (address => student)students;
    
    function register() public payable{
        require(msg.value == 5 ether);
        students[msg.sender].feespaid = true;
        
    }

    function checkregistration() public view returns(string memory){
        if(students[msg.sender].feespaid == true){
            return "You are registered";
        }
        else{
            return "You are not registered";
        }
    }
}
