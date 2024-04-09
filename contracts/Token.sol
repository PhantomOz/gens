// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Gen is ERC20, Ownable {
    constructor(
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) Ownable(msg.sender) {}

    function mint(address _account, uint256 _value) public onlyOwner {
        _mint(_account, _value);
    }

    function burn(uint256 _amount) external {
        _burn(msg.sender, _amount);
    }

    function transfer(
        address to,
        uint256 value
    ) public override returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
}
