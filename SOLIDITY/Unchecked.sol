//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract Unchecked{
    uint256 public myUint;
    function decrementUint() public{
        unchecked {
            myUint--;
        }
    }
}
