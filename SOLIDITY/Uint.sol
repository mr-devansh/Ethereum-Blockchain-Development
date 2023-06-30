//SPDX-License-Identifier:MIT
pragma solidity 0.8.14;
contract Integers{
    uint public myUint;
    function changeUint(uint _myUint) public{
        myUint = _myUint;
    }
}
