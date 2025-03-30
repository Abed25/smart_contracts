//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // state version

contract SimpleStorage{
// data types: boolean, uint,int, address, bytes, strings

uint256 myfavoriteNumber;

struct Person{
    uint256 favoriteNumber;
    string name;
}

Person[] public listOfPeople;

//Person public pat = Person(7,"Pat");

function store(uint256 favNum)public{
    myfavoriteNumber = favNum;
}

//view - read states call by reference - no updating states
//pure -store function - update states -call by value
function retrieve() public view returns (uint256){
    return myfavoriteNumber;
}

function addPerson(string memory name, uint256 favNum) public{
    listOfPeople.push(Person(favNum, name));
}
}