# LocalStore Smart Contract

## Overview

The `LocalStore` smart contract is a simple store management system built on the Ethereum blockchain using Solidity. It allows the store owner to manage product stock and prices, and to withdraw funds from the contract.

## Features

- **Add Stock**: Add a specified quantity of a product to the store's inventory.   
- **Update Price**: Update the price of a product.
- **Remove Stock**: Remove a specified quantity of a product from the store's inventory.
- **Check Stock and Price**: View the current stock and price of a product.
- **Withdraw Funds**: Withdraw funds from the contract balance.
- **Test Revert**: A function that always reverts, useful for testing.

## Deployment

The contract is written in Solidity and is designed to be deployed on the Ethereum blockchain.

### Prerequisites

- Solidity compiler version ^0.8.0
- An Ethereum wallet with some testnet ETH for deployment (e.g., MetaMask)

### Compilation and Deployment

1. Compile the contract using Remix or any Solidity compiler.
2. Deploy the contract to the desired Ethereum network.
3. The deploying address will be set as the owner of the store.

## Contract Details

### State Variables

- `address public owner`: The owner of the store.
- `mapping(string => uint) public prices`: Stores the prices of the products.
- `mapping(string => uint) public stock`: Stores the stock quantities of the products.

### Events

- `event Stock(string product, uint quantity)`: Emitted when stock is added or removed.
- `event Price(string product, uint newPrice)`: Emitted when a product's price is updated.

### Modifiers

- `modifier onlyOwner()`: Restricts access to certain functions to the owner only.

### Functions

#### `constructor()`

Sets the contract deployer as the owner.

#### `addStock(string memory product, uint quantity) public onlyOwner`

Adds the specified quantity of the product to the store's stock. Emits a `Stock` event.

- `product`: The name of the product.
- `quantity`: The quantity to add (must be greater than zero).

#### `updatePrice(string memory product, uint newPrice) public onlyOwner`

Updates the price of the specified product. Emits a `Price` event.

- `product`: The name of the product.
- `newPrice`: The new price (must be greater than zero).

#### `removeStock(string memory product, uint quantity) public onlyOwner`

Removes the specified quantity of the product from the store's stock. Emits a `Stock` event.

- `product`: The name of the product.
- `quantity`: The quantity to remove (must be greater than zero and less than or equal to the current stock).

#### `check(string memory product) public view returns (uint, uint)`

Returns the current stock and price of the specified product.

- `product`: The name of the product.
- Returns: A tuple containing the stock and price of the product.

#### `withdrawFunds(uint amount) public onlyOwner`

Withdraws the specified amount of funds from the contract balance to the owner's address.

- `amount`: The amount to withdraw (must be less than or equal to the contract balance).

#### `testRevert() public pure`

A function that always reverts with the message "This function always reverts". Useful for testing revert scenarios.

## License

This project is licensed under the MIT License.
