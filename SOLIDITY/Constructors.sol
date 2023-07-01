// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract Constructors{
    address public myAddress;

    constructor(address _Address){
        myAddress = _Address;
    }

    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    function setMsgSender() public {
        myAddress = msg.sender;
    }
}
