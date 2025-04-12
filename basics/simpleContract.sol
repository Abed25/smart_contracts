
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // state version

contract SimpleStorage{
// data types: boolean, uint,int, address, bytes, strings

uint256 myfavoriteNumber;

//creating a structure
struct Person{
    uint256 favoriteNumber;
    string name;
}

//dynamic array
Person[] public listOfPeople;

mapping(string => uint256) public nameFavoriteNumber;

//Person public pat = Person(7,"Pat");

function store(uint256 favNum)public{
    myfavoriteNumber = favNum;
}

//view - read states call by reference - no updating states
//pure -store function - update states -call by value
function retrieve() public view returns (uint256){
    return myfavoriteNumber;
}
//memomory - temporary memory- modified
//calldata - temporary memory-cannot be modified
//storage
function addPerson(string memory name, uint256 favNum) public{
    listOfPeople.push(Person(favNum, name));
    nameFavoriteNumber[name] = favNum;
}
}
