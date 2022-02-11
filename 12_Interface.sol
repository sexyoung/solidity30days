// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface Animal {
    function run(uint speed) external returns (uint);
}

contract Cat is Animal {
    function run(uint speed) external pure returns (uint) {
        return speed * speed;
    }
}

contract Dog is Animal {
    function run(uint speed) external pure returns (uint) {
        return speed * 10;
    }
}