// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {Test} from "forge-std/Test.sol";
import {BootcampNFT} from "../src/NFT.sol";
contract NFTTest is Test {
    BootcampNFT public nft;
    function setUp() public { nft = new BootcampNFT(); }
    function testMinting() public {
        uint256 tokenId = nft.mintNFT(address(this), "ipfs://QmTest123");
        assertEq(nft.ownerOf(tokenId), address(this));
    }
}
