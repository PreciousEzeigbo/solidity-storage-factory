// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";

contract StorageFactory{
    
    SimpleStorage public mySimpleStorage;


    function createSimpleStorageContract() public {
        mySimpleStorage = new SimpleStorage();
    }
} 
