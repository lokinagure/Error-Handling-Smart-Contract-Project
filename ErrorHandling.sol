// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {

    function division(uint num1, uint num2) public pure returns (uint){

        //    function error handles and give error message when nominator is less then denominator
        require(num2 < num1, "nominator should be grater or equal to denominator");
        return num1 / num2;
    }


    function multipication(uint num1, uint num2) public pure returns(uint){

        // If one of the numbers is zero , function terminates and revert back to it's previous state.
        // Remaining gas amount refunded back to sender adderess.
        if(num1 == 0 || num2 == 0){
            revert("Number must not be zero");
        }
        return num1 * num2;
    }


    function subtraction(uint num1, uint num2) public pure returns (uint){
        uint amount = num1 - num2;

        // Fails and gives error message when amount value is less then zero and revert back to previous state.
            assert(amount >= 0);
            return amount;
    }
}
