// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract Mapping{
    //mapping are like hashmaps: key value type
    mapping(uint => bool) public MyMapping;
    mapping(address => bool) public MyWhitelist;
    function setAddress() public{
        MyWhitelist[msg.sender] = true;
    }
    function setBool(uint _index) public{
        MyMapping[_index] = true;
    }
}
