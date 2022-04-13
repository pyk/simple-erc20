// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import { ERC20 } from "solmate/tokens/ERC20.sol";

contract SimpleERC20 is ERC20 {
    address public owner;

    constructor() ERC20("Simple ERC20", "sERC20", 18) {
        owner = msg.sender;
    }

    function mint() external {
        require(msg.sender == owner, "!REKT");
        _mint(msg.sender, 1 ether);
    }
}
