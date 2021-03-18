pragma solidity ^0.7.0;    // use solidity version greater than that

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;  // key value dictionary
    
    uint256 openingTime = 1616029461; // UNIX epoch time

    // Create a modifier
    // here we are checking if the caller of the functioin with this modifier is indeed the owner
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }
    
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    // we are making this function such that not anyone can add a person, only the owner of the contract
    function addPerson(string memory _firstName, string memory _lastName) public onlyWhileOpen{
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}
