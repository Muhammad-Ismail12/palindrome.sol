// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

// Task 1:

contract Task1{

    string text = "Hello Solidity";

    function show_txt() public view returns(string memory){
        return text;
    }
}

//Task 2:

contract Task2{

    uint8 stateVariable = 10;

    function returnStateVariable() public view returns(uint8){
        return stateVariable;
    }

    function returnLocalVariable() public pure returns(uint8){
        uint8 localVariable = 20;
        return localVariable;
    }
}
