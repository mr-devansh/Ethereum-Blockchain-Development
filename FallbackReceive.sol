//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
    contract FallbackReceive{
        uint public lastValueSent;
        string public lastFunctionCalled;
        uint public myUint;

    function setMyUint(uint _myNewUint) public{
        myUint = _myNewUint;
    }

        //receive used to receive ether: used for very low gas, cannot write a function
        //if value but no calldata the receive
        receive() external payable{
            lastValueSent = msg.value;
            lastFunctionCalled = "receive";
        }
        // if we hit transact function from console without a value it calls the receive function
        // but if some value is passed we need to use fallback
        //if both value and calldata present hence fallback
        fallback() external payable{
            lastValueSent = msg.value;
            lastFunctionCalled = "fallback";
        }
    }
