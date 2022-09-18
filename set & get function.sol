// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract Task1{

    uint8 a;

    function seta(uint8 _a) public {
        a = _a;
    }

    function geta() public view returns(uint8){
        return a;
    }
}
