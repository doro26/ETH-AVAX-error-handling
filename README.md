# ERROR HANDLING IN SOLIDITY

## Description

In Solidity, error handling is essential for building secure and reliable smart contracts. Solidity provides three primary mechanisms: `require()`, `assert()`, and `revert()`. The `require()` function checks for valid conditions and inputs, reverting the transaction and refunding gas if the condition fails. The `assert()` function ensures internal consistency and invariants, consuming all gas if the condition fails, indicating a critical contract bug. Finally, the `revert()` function explicitly reverts the transaction, often with a custom error message, making it useful for handling complex errors. These mechanisms help maintain contract integrity by preventing invalid states and providing clear error feedback.

---

This paragraph captures the key points of Solidity’s error handling in a more concise format.
# ErrorHandling Smart Contract

## Overview

The `ErrorHandling` contract demonstrates Solidity's error handling with `require()`, `assert()`, and `revert()` statements.

## Contract Functions

### `checkRequire(uint256 num) -> string`
Ensures `num` is within the range [0, 255].
- **Input**: `num` (uint256)
- **Output**: "within range" if valid; otherwise, reverts.

### `checkAssert(uint256 num1, uint256 num2)`
Asserts the sum of `num1` and `num2` is <= 255.
- **Input**: `num1`, `num2` (uint256)
- **Effect**: Sets `result` to true if the sum is valid.

### `getResult() -> string`
Returns the result of the last `checkAssert()` call.
- **Output**: "No overflow" or "overflow occur".

### `checkRevert(uint256 num1, uint256 num2) -> (string, uint256)`
Reverts if the sum of `num1` and `num2` is not within [0, 255].
- **Input**: `num1`, `num2` (uint256)
- **Output**: "No overflow" and the sum if valid; otherwise, reverts.

## Deployment

1. **Using Remix**:
   - Paste the contract code into a new file.
   - Compile and deploy using the Remix IDE.

2. **Using Truffle**:
   - Add the contract to the `contracts` directory.
   - Compile with `truffle compile`.
   - Deploy with `truffle migrate`.

## Interaction

- **Remix**: Use the deployed contract's UI to call functions.
- **Web3.js/Ethers.js**: Use these libraries to interact programmatically.

---

## License

Licensed under the MIT License.

