// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Ownable {
    address private owner;
    constructor() {
        owner = msg.sender;
    }

    function isOwner() public view returns (bool) {
        return msg.sender == owner;
    }

    modifier onlyOwner() {
        require(isOwner());
        _;
    }
}

contract Main is Ownable {
    string public name = "";
    function modifyName(string calldata _name) public onlyOwner {
        name = _name;
    }
}