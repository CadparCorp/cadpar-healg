// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title HEALG – Potion of Healing (Cadpar)
 * @custom:symbol HEALG
 * @custom:effect Restores health and vitality to user. Particularly good for hangovers or late-night gaming.
 * @custom:supply 181,214,091,615 – Rolled fresh on 4d6, drop lowest, x6.
 * @custom:coinstats STR18 CON12 DEX14 INT09 WIS16 CHA15
 * @custom:purpose Part of the Cadpar Potions Series. No utility. No promises. Just vibes.
 *
 * @custom:issuer Launched by Cadpar Corp, Ontario, Canada
 * @custom:trust All Cadpar Corp token launches are fair, secure, fully transparent, and irrevocable.
 * @custom:launch Fixed supply. No mint. No burn. No tax. Ownership renounced post-launch.
 * @custom:security No proxies. No upgrades. No backdoors. No admin functions. No rug.
 * @custom:transparency Source code verified. LP locked. Founder wallet public and time-locked.
 *
 * @custom:website https://cadpar.com
 * @custom:contact michael@cadpar.com
 * @custom:verify Source verified on Polygonscan
 */

contract HEALG is ERC20, Ownable {
    /// @notice Total supply: 181,214,091,615 HEALG (18 decimals)
    uint256 public constant INITIAL_SUPPLY = 181_214_091_615 * 10 ** 18;

    constructor(address initialOwner)
        ERC20("Potion of Healing (Cadpar)", "HEALG")
        Ownable(initialOwner)
    {
        _mint(initialOwner, INITIAL_SUPPLY);
    }

    /// @notice Optional one-time ownership renounce, callable after setup.
    function finalize() external onlyOwner {
        renounceOwnership();
    }
}
