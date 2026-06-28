// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {Script} from "forge-std/Script.sol";
import {BootcampNFT} from "../src/NFT.sol";
contract DeployScript is Script {
    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new BootcampNFT();
        vm.stopBroadcast();
    }
}
