// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
    練習怎麼從合約拿錢出來
    但首先要先送錢到合約
    並練習如果錢不夠了是否有用 require 檢查並 revert
*/
contract Address {
    receive() external payable {}
    function Balance() public view returns (uint256) {
        return address(this).balance;
    }

    function Transfer(uint256 amount) public returns (bool) {
        payable(msg.sender).transfer(amount * 1 ether);
        return true;
    }

    function SendWithoutCheck(uint256 amount) public returns (bool) {
        payable(msg.sender).send(amount * 1 ether);
        return true;
    }

    function SendWithCheck(uint256 amount) public returns (bool) {
        require(payable(msg.sender).send(amount * 1 ether), "Send failed");
        return true;
    }
}