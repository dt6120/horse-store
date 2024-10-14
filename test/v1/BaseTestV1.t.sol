// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test, console} from "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";

abstract contract BaseTestV1 is Test {
    string public constant HORSE_STORE_HUFF_LOCATION = "horseStoreV1/HorseStore";

    HorseStore horseStoreSol;
    HorseStore horseStoreHuff;

    function setUp() public virtual {
        horseStoreSol = new HorseStore();
        horseStoreHuff = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}
