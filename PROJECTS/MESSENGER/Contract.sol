//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract Contract{
    uint public count;
    address public owner;
    string public message;
    constructor(){
        owner = msg.sender;
    }
    function updateMessage (string memory _message) public {
        if(msg.sender==owner){
            message = _message;
            count++;
        }
    }
}