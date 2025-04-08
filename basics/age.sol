// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract welcomeSuperDev {
    uint private myAge = 22;

function setYourAge(uint age)public {
    myAge = age;
}

function getYourAge() public view returns (uint){
    return myAge;
}
}