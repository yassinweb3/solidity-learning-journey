// SPDX-License-Identifier: MIT

pragma solidity 0.8.31;

contract Day04 {
    uint public number = 10;

    address public caller = msg.sender;
    address public origin = tx.origin;

    function getOrigin() public view returns (address) {
        return tx.origin;
    }

    function getSender() public view returns (address) {
        return msg.sender;
    }

    function getValue() public payable returns (uint) {
        return msg.value;
    }

    function getBlockNumber() public view returns (uint) {
        return block.number;
    }

    function getBlockTimestamp() public view returns (uint) {
        return block.timestamp;
    }
}

contract ContractA {
    function callContractB(address contractB)
        public
        view
        returns (address, address)
    {
        return ContractB(contractB).checkAddresses();
    }
}

contract ContractB {
    function checkAddresses()
        public
        view
        returns (address, address)
    {
        return (msg.sender, tx.origin);
    }
}