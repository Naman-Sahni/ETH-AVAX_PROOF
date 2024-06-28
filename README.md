# ETH-AVAX_PROOF
Module 1 Project : Functions and Errors

# OwnershipContract

This is a simple Solidity contract to demonstrate ownership verification. The contract includes functions to check whether the caller is the owner of the contract. 

## Overview

The `OwnershipContract` is designed to allow only the owner of the contract to perform certain actions. The contract uses the `msg.sender` to verify the ownership.

## Contract Details

### State Variables

- `address public owner_address`:
  - This variable stores the address of the contract owner. It is initialized to the address of the account that deploys the contract.

### Constructor

- `constructor()`:
  - The constructor is executed once when the contract is deployed. It sets the `owner_address` to the address of the account that deploys the contract (`msg.sender`).

### Functions

- `function verify_owner() public view`:
  - This function checks if the caller is the owner of the contract. It uses the `require` statement to ensure that `msg.sender` is equal to `owner_address`. If the caller is not the owner, it reverts with the message "Only the owner can call this function."

- `function validate_owner() public view`:
  - This function also checks if the caller is the owner of the contract. If `msg.sender` is not equal to `owner_address`, it reverts with the message "The caller is not the owner."

- `function assert_owner() public view`:
  - This function checks if the caller is the owner of the contract using the `assert` statement. If `msg.sender` is not equal to `owner_address`, it triggers an assertion failure.

## Usage

To use this contract:

1. Deploy the contract to a blockchain network.
2. The deployer's address will be set as the `owner_address`.
3. Use the functions `verify_owner`, `validate_owner`, and `assert_owner` to check ownership. These functions will only allow calls from the owner address and revert otherwise.

