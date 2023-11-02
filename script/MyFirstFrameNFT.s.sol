// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Script, console2} from "forge-std/Script.sol";
import {MyFirstFrameNFT} from "../src/MyFirstFrameNFT.sol";

contract DeployMyFirstFrameNFT is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        MyFirstFrameNFT _myFirstFrameNFT = new MyFirstFrameNFT();

        console2.log(
            "MyFirstFrameNFT deployed with address: ",
            address(_myFirstFrameNFT)
        );

        vm.stopBroadcast();
        
    }
}

contract MyFirstFrameNFTScript is Script {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
    function mint(address nft, uint256 quantity) public {
        vm.startBroadcast(deployerPrivateKey);    
        MyFirstFrameNFT _myFirstFrameNFT = MyFirstFrameNFT(nft);
        _myFirstFrameNFT.mint(quantity);
        vm.stopBroadcast();
    }

    function approve(address nft, address to, uint256 tokenId) public {
        vm.startBroadcast(deployerPrivateKey);    
        MyFirstFrameNFT _myFirstFrameNFT = MyFirstFrameNFT(nft);
        _myFirstFrameNFT.approve(to, tokenId);
        vm.stopBroadcast();
    }

}

