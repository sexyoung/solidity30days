// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// practice mapping
contract Donation {
    mapping(address => uint) public ledger;
    mapping(address => bool) public donors;
    address[] public donorList;

    function isDonor(address pAddr) internal view returns (bool) {
        return donors[pAddr];
    }

    function donate() public payable {
        if(msg.value >= 2 ether) {
            if(!isDonor(msg.sender)) {
                donors[msg.sender] = true;
                donorList.push(msg.sender);
            }
            ledger[msg.sender] += msg.value;
        } else {
            revert("< 2 ether");
        }
    }
}