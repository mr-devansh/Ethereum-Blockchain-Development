//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract Address{
    address public myAddress;
    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    function getBalance() public view returns(uint){
        return myAddress.balance;
    }
}
