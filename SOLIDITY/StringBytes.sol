//SPDX-License-Identifier:MIT
pragma solidity 0.8.15;
contract StringBytes{
    string public myString = "hello";
    bytes public myBytes = "world";
    function setString(string memory _myString) public {
        myString = _myString;
    }
    function compareStrings(string memory _myString) public view returns(bool){
        return keccak256(abi.encodePacked(myString))==keccak256(abi.encodePacked(_myString));
    }
}
