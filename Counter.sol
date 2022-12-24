// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract Counter {
    uint256 public a;

    function inc() external {
        a += 1;
    }

    function dec() external {
        a -= 1;
    }
}
