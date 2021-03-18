## ETHERIUM and SOLIDITY

### Smart Contract
- Smart contract is code that is executed on the block chain, here etherium. Its like a microservice where everyone on the block chain will be able to access it.
- They will be able to see the smart contract, see it and read and write data to it
- Syntactically looks like a class


### Solidity
- Contracts based language. 
- Sytax similar to Python, C++ and Javascript
- Runs on Etherium Virtual machine (EVM)
- Its has statically defined types

#### Language Data types
- public keyword on the global variable gives you access even without a getter function
- 'address' is a datatype in solidity. Address on the blockchain network is an account
- '_' underscore character for functinoal modifiers. Directing flow of code. See this
  - https://ethereum.stackexchange.com/questions/19171/what-does-underscore-do/19173
- 'msg' is a global variable in blockchain which holds the account info
- 'block' is another global. Has info about this current block (we use the timestamp in example)
-  use 'payable' keyword when you want to send/receive payments
- 'events' are like ROS events, helps you with the log. You can subscribe to the events
  - you can use the 'indexed' keyword to filter on that property, our case we indexed the buyer name

### Transactioins
- The etherium blockchain is made of bundles of recored called blocks
- The basic units of all those blocks are the transactions
- These transactions have receipts. We can see those receipts as our contract is deployed and running
- 

### Remix
- This is the IDE we use to code in Solidity programming language
- You can either install it or can run the online version here
  - https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null&version=soljson-v0.7.4+commit.3f05b770.js


