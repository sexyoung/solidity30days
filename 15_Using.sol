// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./13_Library.sol";

contract Main {
    using Set for Set.Data;
    Set.Data mySet;
    function insert(int key) public returns (bool) {
        return mySet.Insert(key);
    }
    function remove(int key) public returns (bool) {
        return mySet.Remove(key);
    }
    function contain(int key) public view returns (bool) {
        return mySet.Contain(key);
    }
}