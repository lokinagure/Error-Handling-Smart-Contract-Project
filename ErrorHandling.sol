// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {

    function division(uint num1, uint num2) public pure returns (uint){
        // 
        require(num2 < num1, "nominator should be grater or equal to denominator");
        return num1 / num2;
    }


    function multipication(uint num1, uint num2) public pure returns(uint){
        //   
        if(num1 == 0 || num2 == 0){
            revert("Number must not be zero");
        }
        return num1 * num2;
    }


    function subtraction(uint num1, uint num2) public pure returns (uint){

        uint amount = num1 - num2;
        if(amount < 0){
            assert(amount == 0);
        }
        return amount;
    }
}