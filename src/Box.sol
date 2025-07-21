// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_value;

    event ValueChanged(uint256 newValue);

    constructor(address initialOwner) Ownable(initialOwner) {}

    function store(uint256 newValue) public onlyOwner {
        s_value = newValue;
        emit ValueChanged(newValue);
    }

    function getNumber() public view returns (uint256) {
        return s_value;
    }
}
