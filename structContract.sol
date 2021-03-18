pragma solidity ^0.7.0;    // use solidity version greater than that

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;  // key value dictionary
    
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}
