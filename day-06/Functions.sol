// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Day06 {

    uint256 public price;

    constructor(uint256 _price) {
        price = _price;
    }

    function getPrice() public view returns (uint256) {
        return price;
    }

    function calculate() public pure returns (uint256) {
        return 10 + 20;
    }

    modifier validPrice(uint256 _price) {
        require(_price > 0, "Price must be greater than 0");
        _;
    }

    function setPrice(uint256 _newPrice) public validPrice(_newPrice) {
        price = _newPrice;
    }

}