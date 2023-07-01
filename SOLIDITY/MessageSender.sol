//SPDX-License-Identifier:MIT
pragma solidity 0.8.15;
contract MessageSender{
    address public myAddress;
    function updateAddress() public{
        myAddress = msg.sender;
        //msg.sender gives the address of the last node that sent the message.
    }
}
