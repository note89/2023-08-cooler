// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {MockERC20} from "solmate/test/utils/mocks/MockERC20.sol";

interface IDelegate {
    function delegate(address) external returns (bool);
}

contract MockGohm is MockERC20, IDelegate {
    uint256 public constant index = 10000;
    address public delegatee;

    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) MockERC20(name_, symbol_, decimals_) {}

    function delegate(address delegatee_) public returns (bool) {
        delegatee = delegatee_;
        return true;
    }

    function balanceFrom(uint256 amount_) public view returns (uint256) {
        return (amount_ * index) / 10 ** decimals;
    }

    function balanceTo(uint256 amount_) public view returns (uint256) {
        return (amount_ * 10 ** decimals) / index;
    }
}

contract MockOhm is ERC20 {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) ERC20(_name, _symbol, _decimals) {}

    function mint(address to, uint256 value) public virtual {
        _mint(to, value);
    }

    function burnFrom(address from, uint256 value) public virtual {
        _burn(from, value);
    }
}

contract MockStaking {
    function unstake(address, uint256 amount, bool, bool) external pure returns (uint256) {
        return amount;
    }
}