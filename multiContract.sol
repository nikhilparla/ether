pragma solidity ^0.7.0;    // use solidity version greater than that

contract ERCToken {
   string public name;
   mapping(address => uint256) public balances;
   
   function mint() public {
       // the msg.sender doesnt work here since the one that calls the mint is not the sender
       // use tx.origin instead
    //   balances[msg.sender] ++;
       balances[tx.origin] ++;

   }
}

contract MyContract{
    address payable wallet;
    address public token;
    
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }
    
    fallback() external payable {
        buyToken();
    }
    
    function buyToken() public payable{
        ERCToken _token = ERCToken(address(token));
        _token.mint();
        wallet.transfer(msg.value);
    }
}
