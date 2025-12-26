// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
 * XP TOKEN — X PLATINUM
 * ------------------------------------
 * Enterprise real estate tokenization
 * TEMPLATE CONTRACT — NOT LIVE
 */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract XPToken is ERC20, Ownable, Pausable {

    uint8 private constant TOKEN_DECIMALS = 18;

    constructor(
        address initialOwner,
        uint256 initialSupply
    ) ERC20("X Platinum", "XP") Ownable(initialOwner) {
        _mint(initialOwner, initialSupply);
    }

    function decimals() public pure override returns (uint8) {
        return TOKEN_DECIMALS;
    }

    // --- ADMIN CONTROLS ---

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // --- TRANSFER CONTROL ---

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override whenNotPaused {
        super._beforeTokenTransfer(from, to, amount);
    }
}
