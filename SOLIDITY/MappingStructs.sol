// SPDX-License-Identifier: MIT
pragma solidity 0.8.15; 
contract Example{

    struct Transaction{
        uint amount;
        uint timestamp;
    }

    struct Balance{
        uint totalBalance;
        uint numDeposit;
        mapping(uint => Transaction) deposits;
        uint numWithdrawls;
        mapping (uint => Transaction) withdrawls;
    }

    mapping (address=>Balance) public balances;

    function getDepositNum(address _from, uint _num) public view returns(Transaction memory){
        return balances[_from].deposits[_num];
    }

    function depositMoney() public payable{
        balances[msg.sender].totalBalance+=msg.value;
        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balances[msg.sender].deposits[balances[msg.sender].numDeposit] = deposit;
        balances[msg.sender].numDeposit++;
    }
    function withdrawMoney(address payable _to, uint _amount) public{
        balances[msg.sender].totalBalance-=_amount;
        Transaction memory withdrawl = Transaction(_amount, block.timestamp);
        balances[msg.sender].withdrawls[balances[msg.sender].numWithdrawls] = withdrawl;
        balances[msg.sender].numWithdrawls--;
        _to.transfer(_amount);
    }

}
