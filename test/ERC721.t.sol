// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Test, console} from "forge-std/Test.sol";
import {ERC721} from "../src/ERC721.sol";
import { MyNFT} from "../src/ERC721.sol";

contract ERC721Test is Test {
     MyNFT erc721;
    address bob = address(0x1);
    address mary = address(0x2);

    function testMintToken() public {
        erc721 = new  MyNFT();
        erc721.mint(bob, 0);
        address owner_of = erc721.ownerOf(0);
        assertEq(bob, owner_of);
    }
}
