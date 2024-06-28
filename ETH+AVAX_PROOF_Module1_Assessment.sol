// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract OwnershipContract {
    address public owner_address;

    constructor() {
        owner_address = msg.sender;
    }

    function verify_owner() public view {
        require(msg.sender == owner_address, "Only the owner can call this function.");
    }

    function validate_owner() public view {
        if (msg.sender != owner_address) {
            revert("The caller is not the owner.");
        }
    }

    function assert_owner() public view {
        assert(msg.sender == owner_address);
    }
}
