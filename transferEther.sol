pragma solidity ^0.7.0;    // use solidity version greater than that

contract MyContract {
   mapping(address => uint256) public balances;         // directory of accounts
   address payable wallet;      // payable is a keyword, should be used when you want to transfer ether
   
   // event is published when triggered
   event Purchase(address indexed _buyer, uint256 _amount);
   
   constructor(address payable _wallet) public {
       wallet = _wallet;
   }
   
   // external means it can be called only from outside
   fallback() external payable{
       buyToken();
   }
   
   function buyToken() public payable{
       // buy a buyToken
       balances[msg.sender] += 1;
       // send ether to the wallet
       wallet.transfer(msg.value);
       emit Purchase(msg.sender, 1);
   }
   
}
