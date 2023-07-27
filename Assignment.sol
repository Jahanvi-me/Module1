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
