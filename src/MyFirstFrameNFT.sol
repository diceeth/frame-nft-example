pragma solidity ^0.8.21;
 
import "erc721a/ERC721A.sol";
 
contract MyFirstFrameNFT is ERC721A {
    constructor() ERC721A("MyFirstFrameNFT", "FIRST") {}
 
    function mint(uint256 quantity) external {
        _mint(msg.sender, quantity);
    }
   
    function tokenURI(uint256) public view override returns (string memory) {
        return "ipfs://QmRmuCkoz1DAobvB9fofe4RekB9sgjuy5gujDVv4u4FzSM";
    }

    function _startTokenId() internal pure override returns (uint256) {
        return 1;
    }
}
