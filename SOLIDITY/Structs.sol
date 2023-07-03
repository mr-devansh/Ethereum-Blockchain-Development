// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

// using smart contracts to save a payment
contract wallet{
    PaymentReceived public payment;
    function payContract() public payable{
        payment =new PaymentReceived(msg.sender, msg.value);
    }
}

contract PaymentReceived{
    address public from;
    uint public amount;

    constructor(address _from, uint _amount){
        from = _from;
        amount = _amount;
    }
}

// using wallet to save a payment: uses less gas
contract wallet2{

    struct PaymentRecivedStruct{
        address from;
        uint amount;
    }

    PaymentRecivedStruct public payment;

    function payContract() public payable{
        // payment = PaymentRecivedStruct(msg.sender, msg.value);
        payment.from = msg.sender;
        payment.amount = msg.value;
    }
}
