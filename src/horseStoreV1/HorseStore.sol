// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract HorseStore {
    uint256 private numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        numberOfHorses = newNumberOfHorses;
    }

    function readNumberOfHorses() external view returns (uint256) {
        return numberOfHorses;
    }
}
