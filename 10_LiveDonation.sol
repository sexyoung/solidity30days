// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** TODO: Donation Record
    streamer => donations
*/

contract LiveDonation {
    event LogDonate(address streamer, address donor, string nickname, uint value, string message);
    function donate(address payable _streamer, string calldata _nickname, string calldata _message) public payable {
        _streamer.transfer(msg.value);
        emit LogDonate(_streamer, msg.sender, _nickname, msg.value, _message);
    }
}