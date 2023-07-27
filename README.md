# Error Handling

This demonstrates how to handle errors in a solidity contract through a very simple example. The purpose of this program is to demonstrate the functionality of functions such as require, revert and assert.


## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three functions. The "require_test" function shows the working of the "require" function. If the value of the variable is not smaller than 10 then it throws an error.  The "revert_test" function shows the working of the "revert" function. If the value of the variable is not smaller than 10 then it throws an error, the rest of the gas is refunded back to the account and the state updates are reverted. The "assert_test" function shows the working of the "assert" function. If the value of the state variable "num" is assigned anything other than 123 then it will throw an error. This program serves as a simple way to understand error handling in the Solidity programming language.
## Getting Started
**Executing program**

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandleAssessment.sol). Copy and paste the following code into the file:
```
//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;


contract Module1{
    function require_test(uint _i) public pure{
        require(_i <= 5, "i should be smaller then or equalto  5");
    }

    function revert_test(uint _i) public pure{
        if(_i > 5){
            revert("i should be smaller than 5");
        }
    }

    uint public num = 123;
    
    function assert_test() public view{
        assert(num == 123);
    }

}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile ErrorHandleAssessment.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "EthAssessment" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the testAssert, testRequire and testRevert funtions. Click on the "EthAssessment" contract in the left-hand sidebar, and then click on the "testRevert" function. Then pass the argument. Finally, click on the "call" button to execute the function. Similarly, perform for "testRequire" function and for "testAssert" function simply click on "call".


## Authors

-jahanvi


## License

This project is licensed under the MIT License - see [MIT LICENSE] for details
