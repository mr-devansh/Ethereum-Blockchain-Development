//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

    contract metaMaskIntro{
        string public ourString = "Hello Earth";
        function updateOurString(string memory _updateString) public payable {
            if(msg.value==1 wei){
                ourString = _updateString;
            }else{
                //every variable of type address has a transfer function
                payable(msg.sender).transfer(msg.value);
            }
            
        }
    }
