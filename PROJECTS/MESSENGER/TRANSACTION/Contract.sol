// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Contract{

    uint public balanceReceived;
    function Deposit() public payable{
        balanceReceived+=msg.value;
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdraw() public{
        address payable to = payable (msg.sender);
        to.transfer(getBalance());
    }
    function withdrawTo(address payable to) public payable{
        to.transfer(msg.value);
    }
}