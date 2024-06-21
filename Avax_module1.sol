// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalStore {
    address public owner;
    mapping(string => uint) public prices;
    mapping(string => uint) public stock;
    
    event Stock(string product, uint quantity);
    event Price(string product, uint newPrice);
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner of the store");
        _;
    }
    
    function addStock(string memory product, uint quantity) public onlyOwner {
        require(quantity > 0, "Quantity > zero is a must");
        stock[product] += quantity;
        emit Stock(product, quantity);
        assert(stock[product] >= quantity);
    }
    
    function updatePrice(string memory product, uint newPrice) public onlyOwner {
        require(newPrice > 0, "Price > zero is a must");
        prices[product] = newPrice;
        emit Price(product, newPrice);
        assert(prices[product] == newPrice);
    }
    
    function removeStock(string memory product, uint quantity) public onlyOwner {
        require(quantity > 0, "Quantity > zero is a must");
        require(stock[product] >= quantity, "Not enough stock to remove");
        
        stock[product] -= quantity;
        emit Stock(product, stock[product]);
        assert(stock[product] >= 0);
    }
    
    function check(string memory product) public view returns (uint,uint) {
        return (stock[product], prices[product]);
    }
    
    function testRevert() public pure {
        revert("This function always reverts");
    }
}
