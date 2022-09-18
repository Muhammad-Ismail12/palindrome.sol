// SPDX-License-Identifier: GPL-3.0

pragma solidity  <0.9.0;

contract Task2{

    function palindrome(uint n) public pure returns(uint){
        uint result = 0;
        uint remainder;
        uint n_OriginalValue;
        n_OriginalValue = n;
        
        while (n > 0){
            remainder = n % 10;
            result = result * 10 + remainder;
            n = n/10;
        }
        if (n_OriginalValue == result){
            return 1; //palindrome
        }
        else{
            return 0; // not palindrome
        }
    }
}
