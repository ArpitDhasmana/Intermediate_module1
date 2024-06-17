# Intermediate_module1
## Overview
This project demonstrates the usage of `require()`, `assert()`, and `revert()` statements in a Solidity smart contract. The contract includes a validation mechanism for setting limits and checking numbers within a specified range.

## Contract Details
The `Avax_module1` contract has two main functionalities:
1. **set(uint _newLim)**: Allows setting a new limit within a predefined range.
2. **checkNum(uint _number)**: Checks if a number is non-zero and within the acceptable range.

## Functions
### `set(uint _newLim)`
- **Description**: Sets a new limit.
- **Parameters**: `_newLim` - The new limit value.
- **Conditions**:
  - `require()`: Ensures `_newLim` is between `minLim` and `maxLim` with a message "new limit should be between 1 and 100".

### `checkNum(uint _number)`
- **Description**: Checks if a number is valid.
- **Parameters**: `_number` - The number to check.
- **Conditions**:
  - `assert()`: Ensures `_number` is non-zero.
  - `revert()`: Reverts if `_number` exceeds `maxLim` with a message "number exceeds maxlimit".

## Getting Started
To use this contract, deploy it to the Ethereum network using a development environment such as Remix or Truffle.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
