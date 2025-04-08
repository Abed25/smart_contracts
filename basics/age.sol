// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract welcomeSuperDev {
    uint private myAge = 22;

struct UserDetails {
    uint256 age;
    string name;
}

UserDetails[] public listOfClients;

//UserDetails public client = UserDetails({age: 20, name: "Musa"});

function setYourAge(uint age)public {
    myAge = age;
}

function getYourAge() public view returns (uint){
    return myAge;
}

function addClients(uint256 _age, string memory _name) public{
listOfClients.push(UserDetails( _age, _name));
}
}