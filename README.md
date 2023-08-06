# Error-Handling-Smart-Contract-Project
Developing a smart contract that implements the require(), assert() and revert() statements.


## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. A ErrorHandling.sol is a contract name. It has three functions each one is handling error by three different types of error handling available in solidity.
This program serves as a simple and straightforward introduction to Error Handling Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started
### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
```// SPDX-License-Identifier: MIT
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
```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.8" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the  functions name with arguments. 
Click on the "ErrorHandlinf" contract in the left-hand sidebar, and then click on the "division" function with parameters. Finally, click on the "transact" button to execute the function and retrieve the with answer or error message.

Three ErrorHandling functions are using three different error handlers.
1.
```
 require(num2 < num1, "nominator should be grater or equal to denominator");
```
2.
```
if(num1 == 0 || num2 == 0){
            revert("Number must not be zero");
        }
```
3.
```
  assert(amount == 0);
```
## Authors

lokeshkumar nagure
@lokinagure(https://twitter.com/lokinagure)


