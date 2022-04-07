pragma solidity ^0.8.0;
import {FusePoolDirectory} from "./interfaces/IFusePoolDirectory.sol";

interface FusePoolLens {
    struct FusePool {
        string name;
        address creator;
        address comptroller;
        uint256 blockPosted;
        uint256 timestampPosted;
    }
    struct FusePoolData {
        uint256 totalSupply;
        uint256 totalBorrow;
        address[] underlyingTokens;
        string[] underlyingSymbols;
        bool whitelistedAdmin;
    }

    function getPublicPoolsByVerificationWithData(bool whitelistedAdmin) external returns (uint256[] memory, FusePool[] memory, FusePoolData[] memory, bool[] memory); 
}