pragma solidity ^0.7.0;    // use solidity version greater than that

contract MyContract {
    string public value;   // this is a global scope, whose value will be stored on the block chain
    
    // set value when you deploy this smart contract
    // basically like a constructor
    constructor() public{
        value = "myValue";
    }
    
    /*
    function get_value() public view returns(string memory)
    {
        return value;
    }
    */
    
    function set_value(string memory _value) public {
        value = _value;
    }
}
