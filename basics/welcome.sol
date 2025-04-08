// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract welcomeSuperDev {
    // string public message = "Web3 here we come";

    //set private visibility to iniate a getter function
    string private message = "Web3 here we come";

    //setter function it updates my message variable
    function setMessage(string memory newMessage) public{
        message = newMessage;
    }

    //getter message - it calls my private message
    //by assiging my message public visibility we don't need a getter function
    function getMessage() public view returns (string memory){
        return message;
    }
}