//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract BoxV2 is Initializable, OwnableUpgradeable, UUPSUpgradeable   {

    uint256 internal otherNumber;
    uint256 internal number;



    function initialize() public initializer {
        __Ownable_init(); //sets owner to msg.sender()
        __UUPSUpgradeable_init();
    }



    function setNumber(uint256 _number) public {
        number = _number;
    }

    function getNumber() public view returns(uint256) {
        return number;
    }

    function version() external pure returns (uint256) {
        return 2;
    }


     function _authorizeUpgrade(address _newImplementation) internal override {}

} 