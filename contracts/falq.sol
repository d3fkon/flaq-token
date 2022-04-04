// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Flaq is ERC20, ERC20Burnable {
    address public rewardPoolAddr = 0x612FAD2A5CB7b66cC1d10cD7F30Dc2C63F3d627C;
    address public devPoolAddr = 0x849EFbf8b13668d35E8b444a8ef73acCC8fb762A;
    address public markettingAddr = 0x9F5aA68F59A5a289B7Da73714b129dCE81a7a9a7;

    uint256 _rewardPoolSupply = 3800000000;
    uint256 _devSupply = 1200000000;
    uint256 _markettingSupply = 1000000000;
    uint256 _totalSupply = 10000000000;

    constructor() ERC20("Flaq", "FLAQ") {
        _mint(
            msg.sender,
            (_totalSupply -
                (_rewardPoolSupply + _devSupply + _markettingSupply)) *
                10**decimals()
        );
        _mint(rewardPoolAddr, _rewardPoolSupply * 10**decimals());
        _mint(devPoolAddr, _devSupply * 10**decimals());
        _mint(markettingAddr, _markettingSupply * 10**decimals());
    }
}
