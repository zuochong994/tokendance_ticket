// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract TicketContract is ERC721URIStorage {
    // NFT对应所有者
    mapping(uint256 => address) private _owners;
    // 一代用户 和 二代用户之间的授权映射
    // require condition: 数组长度小于3
    mapping(address => address[]) private _invitepeople;
    // 用户合约调用情况，记录调用过合约的人，数组长度不限
    mapping(address => address[]) private _calledpeople;

    // simple token name and symbol, it will change later
    constructor(string memory uri) ERC721("Tokendance Ticket", "TDT") {}

    // 给用户直接空投
    function mint_1g(
        address address1,
        string memory tokenID,
        string memory tokenURL
    ) public returns (uint256) {}

    // 二代用户mint函数
    function mint_2g(
        address address1,
        address address2,
        string memory tokenID,
        string memory tokenURL
    ) public returns (uint256) {}

    // 查询一代用户下的二代用户映射关系
    function check_1g(address address1)
        external
        view
        returns (address[] memory)
    {}

    // 查询特定地址的nft的tokenid
    function balanceOf(address address1)
        public
        view
        override
        returns (uint256)
    {}

    // 查询tokenid对应的所有者地址
    function ownerOf(uint256 _tokenId) public view override returns (address) {}

    // 查询tokenid对应的明细信息，返回一个json，其中有nft的url
    // URI可以为hdfs, 内容格式参考https://eips.ethereum.org/EIPS/eip-721 中搜索 "ERC721 Metadata JSON Schema"
    function tokenURI(uint256 _tokenId)
        public
        view
        override
        returns (string memory)
    {}
}
