// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";


contract TicketContract is ERC1155PresetMinterPauser {
    
    uint256 public constant LevelOneTicket = 0;
    uint256 public constant LevelTwoTicket = 1;
    
    // 待补充ImgURL
    constructor(string memory uri) ERC1155PresetMinterPauser(uri) {
        _mint(msg.sender, LevelOneTicket, 100, "");
        _mint(msg.sender, LevelTwoTicket, 200, "");
    }
    
}