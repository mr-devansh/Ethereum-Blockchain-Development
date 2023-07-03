// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;    
contract Mapping2{

    mapping(address=>uint)public balanceRecived;

    function sendMoney() public payable{
        balanceRecived[msg.sender]+=msg.value;
    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
    function withdrawAll(address payable _to) public{
        uint balance = balanceRecived[msg.sender];
        balanceRecived[msg.sender]=0;
        _to.transfer(balance);
    }
}
