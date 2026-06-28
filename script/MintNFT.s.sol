// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {BootcampNFT} from "../src/NFT.sol";

contract MintNFT is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        // Using a direct assignment to bypass the strict payable conversion
        address deployedAddress = 0xFac432bd7A3909fEa02aE080E0021e8b57c428f7;
        BootcampNFT nft = BootcampNFT(deployedAddress);
        
        nft.mintNFT(msg.sender, "ipfs://QmTest1234567890abcdef1234567890abcdef");
        
        vm.stopBroadcast();
    }
}
