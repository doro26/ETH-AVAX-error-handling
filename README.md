
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

