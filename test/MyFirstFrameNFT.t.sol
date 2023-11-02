// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Test, console2} from "forge-std/Test.sol";
import {MyFirstFrameNFT} from "../src/MyFirstFrameNFT.sol";

contract MyFirstFrameNFTTest is Test {
    MyFirstFrameNFT public nft;

    function setUp() public {
        nft = new MyFirstFrameNFT();
    }

    function test_Mint() public {
        uint quantity = 1;
        nft.mint(quantity);
        uint256 balance = nft.balanceOf(address(this));
        assertEq(balance, quantity);
    }
}
