# NFT2.0 Marketplace - Contreux


## Tech Stack & Tools

- Solidity (Writing Smart Contract)
- Javascript (React & Testing)
- [Ethers](https://docs.ethers.io/v5/) (Blockchain Interaction)
- [Hardhat](https://hardhat.org/) (Development Framework)
- [Ipfs](https://ipfs.io/) (Metadata storage)
- [React routers](https://v5.reactrouter.com/) (Navigational components)



## Overview

Building out a simple marketplace to showcase the progression of the NFT2.0 standard that I have build so far.
To do so I'll be implementing a few seperate features:

1. Collection creation
2. NFT Creation
3. Purchasing of the NFTs
4. Viewing of all NFTs

Todo

1. Copy current NFT standard ERC721
2. Modify ERC271 with current updates
3. Add "Controller" contract
4. Build out deploy scripts for webapp
5. Frontend



## Setting Up
### 1. Clone/Download nft2.0-marketplace Repository

### 2. Install Dependencies:
```
$ cd nft2.0-marketplace
$ npm install
```
### 3. Boot up local development blockchain
```
$ npx hardhat node
```

### 4. Connect development blockchain accounts to Metamask (If you have yet to connect)
- Copy private key of the addresses and import to Metamask
- Connect your metamask to hardhat blockchain, network 127.0.0.1:8545
- If you have not added hardhat to the list of networks on your metamask, open up a browser, click the fox icon, then click the top center dropdown button that lists all the available networks then click add networks. A form should pop up. For the "Network Name" field enter "Hardhat". For the "New RPC URL" field enter "http://127.0.0.1:8545". For the chain ID enter "31337". Then click save.  


### 5. Migrate Smart Contracts
`npx hardhat run src/backend/scripts/deploy.js --network localhost`

### 6. Run Tests (Run test script)
`$ npx hardhat test`

### 7. Launch Frontend
`$ npm run start`

License
----
MIT
