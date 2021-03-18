pragma solidity ^0.7.0;    // use solidity version greater than that

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;  // key value dictionary
    
    address owner;  // the account which is the owner
    
    // Create a modifier
    // here we are checking if the caller of the functioin with this modifier is indeed the owner
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    // set the owner when the contract is deployed
    constructor() public{
        // msg is the metadata that is passed. We dont have to fill it. Default is the address which deploys this contract
        owner = msg.sender;   
    }
    
    // we are making this function such that not anyone can add a person, only the owner of the contract
    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner{
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}
