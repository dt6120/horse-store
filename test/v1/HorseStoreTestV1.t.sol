// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {BaseTestV1, HorseStore} from "./BaseTestV1.t.sol";

contract HorseStoreTestV1 is BaseTestV1 {
    function testStoreAndReadHorseNumber(uint256 newNumberOfHorses) public {
        horseStoreSol.updateHorseNumber(newNumberOfHorses);
        horseStoreHuff.updateHorseNumber(newNumberOfHorses);

        assertEq(horseStoreSol.readNumberOfHorses(), newNumberOfHorses);
        assertEq(horseStoreHuff.readNumberOfHorses(), newNumberOfHorses);
    }
}
