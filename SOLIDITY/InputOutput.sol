//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

    contract Mycontract{
        string public ourString = "Hello Earth";
        function updateOurString(string memory _updateString) public {
            ourString = _updateString;
        }
    }
