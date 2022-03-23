// SPDX-Liscense-Indentifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; // NFT Standard

contract NFT is ERC721URIStorage {
    uint256 public nftCount;

    /**
    Extension to add states
    State indicates whether or not the NFT is for sale globally
    States:
    0 Not listed 
    1 Listed 
     */

    mapping(uint256 => bool) public _tokenStates;

    constructor() ERC721("DApp NFT", "DAPP") {}

    // Extended mint function for the token URI
    function mint(string memory _tokenURI) external returns (uint256) {
        nftCount++;
        _safeMint(msg.sender, nftCount); // Mint token
        _setTokenURI(nftCount, _tokenURI); // Set data for token
        return (nftCount);
    }

    function _setTokenState(uint256 tokenId, bool _state) public {
        require(
            _exists(tokenId),
            "ERC721URIStorage: State set of nonexistent token"
        );
        require((_state == true) || (_state == false));
        _tokenStates[tokenId] = _state;
    }
}
