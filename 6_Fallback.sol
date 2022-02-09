// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// learning how to use fallback to receive payable in
contract FallbackExample {
    event LogFallback(string message);
    event LogBalance(uint balance);

    fallback() external payable {
        emit LogFallback("Fallback");
        emit LogBalance(address(this).balance);
    }
}