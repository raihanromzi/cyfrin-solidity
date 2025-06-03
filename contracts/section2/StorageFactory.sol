// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage public simpleStorage;

    // Function to deploy other contract
    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
    
}