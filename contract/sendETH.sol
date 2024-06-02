// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract sendETH{
    
    // event untuk mencatat transfer
    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    //fungsi untuk mengirim ETH ke alamat yang ditentukan
    function sendEther(address payable _to) public payable {
        require(msg.value > 0, "Send some ETH to transfer");
        require(_to != address(0), "Invalid address");

        // Mmngirim ETH ke alamat tujuan
        _to.transfer(msg.value);

        //emit event transfer
        emit Transfer(msg.sender, _to, msg.value);
    }

    // fungsi untuk menerima ETH ke dalam kontrak
    receive() external payable {
    }
}
