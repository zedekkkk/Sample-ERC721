// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721} from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";

contract BootcampNFT is ERC721URIStorage, Ownable {
    uint256 private _nextTokenId;
    constructor() ERC721("BootcampNFT", "BCNFT") Ownable(msg.sender) {}
    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns (uint256) {
        _nextTokenId++;
        uint256 newItemId = _nextTokenId;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}
