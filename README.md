ERROR HANDLING IN SOLIDITY

Description
In Solidity, error handling is critical for creating secure and dependable smart contracts. Solidity uses three primary error handling mechanisms:'require()', 'assert()', and'revert()'. The'require()' function is used to validate conditions and inputs that could reasonably fail during execution, such as ensuring that an input value falls within an expected range or that the transaction sender is authorised. If a'require()' statement fails, the transaction is reversed, an error message is logged, and any remaining petrol is refunded. In contrast, the 'assert()' function enforces internal consistency checks and invariants within the contract. If a 'assert()' statement fails, it indicates a critical issue within the contract,Consuming the remaining petrol and reversing the transaction. This function should only be used to detect conditions that should not occur in normal operation. Finally, the'revert()' function lets developers explicitly revert a transaction, usually with a custom error message. It is useful for dealing with more complex conditions or communicating specific errors. These error-handling mechanisms work together to ensure the integrity and correctness of smart contracts by preventing invalid states and providing informative error feedback.

PROJECT
overview
Contract Functions

-checkRequire(uint256 num) -> string Ensures num is within the range [0, 255].

Input: num (uint256) Output: "within range" if valid; otherwise, reverts.

-checkAssert(uint256 num1, uint256 num2) Asserts the sum of num1 and num2 is <= 255.

Input: num1, num2 (uint256) Effect: Sets result to true if the sum is valid.

-getResult() -> string Returns the result of the last checkAssert() call. Output: "No overflow" or "overflow occur".

-checkRevert(uint256 num1, uint256 num2) -> (string, uint256) Reverts if the sum of num1 and num2 is not within [0, 255].

Input: num1, num2 (uint256) Output: "No overflow" and the sum if valid; otherwise, reverts.