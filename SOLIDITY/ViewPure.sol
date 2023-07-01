
// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract ViewPure{
    uint public storageVariable;
    //view functions: access storage variables and cannot write them
    function getStorageVariable() public view returns (uint){
        return storageVariable;
    }
    //pure functions: 
    function getAddition(uint a, uint b)public pure returns (uint){
        return a+b;
    } 
    //writing functions
    function setStorageVariable(uint _storageVariable) public{
        storageVariable = _storageVariable;
    }
}
