// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";

contract TestMap {
    using EnumerableMap for EnumerableMap.Bytes32ToBytes32Map;

    EnumerableMap.Bytes32ToBytes32Map private _map;

    function set(string memory key, string memory value) public returns (bool) {
        return _map.set(stringToBytes32(key), stringToBytes32(value));
    }

    function remove(string memory key) public returns (bool) {
        return _map.remove(stringToBytes32(key));
    }

    function contains(string memory key) public view returns (bool) {
        return _map.contains(stringToBytes32(key));
    }

    function length() public view returns (uint256) {
        return _map.length();
    }

    function keyAt(uint256 index) public view returns (string memory) {
        (bytes32 key,) = _map.at(index);
        return bytes32ToString(key);
    }

    function valueAt(uint256 index) public view returns (string memory) {
        (,bytes32 value) = _map.at(index);
        return bytes32ToString(value);
    }

    function tryGetContains(string memory key) public view returns (bool) {
        (bool contained,) = _map.tryGet(stringToBytes32(key));
        return contained;
    }

    function tryGetValue(string memory key) public view returns (string memory) {
        (,bytes32 value) = _map.tryGet(stringToBytes32(key));
        return bytes32ToString(value);
    }

    function get(string memory key) public view returns (string memory) {
        return bytes32ToString(_map.get(stringToBytes32(key)));
    }

    function keys() public view returns (string[] memory) {
        uint256 len = length();
        bytes32[] memory arr = _map.keys();
        string[] memory stringArray = new string[](len);
        for (uint256 i = 0; i < len; i++) {
            stringArray[i] = bytes32ToString(arr[i]);
        }
        return stringArray;
    }

    function indexOf(string memory key) public view returns (uint256) {
        return _map._keys._inner._indexes[stringToBytes32(key)];
    }

    function bytes32ToString(bytes32 data) public pure returns (string memory) {
        bytes memory bytesData = new bytes(32);
        for (uint256 i = 0; i < 32; i++) {
            bytesData[i] = data[i];
        }
        return string(bytesData);
    }

    function stringToBytes32(string memory str) public pure returns (bytes32 result) {
        require(bytes(str).length <= 32, "String is too long");
        assembly {
            result := mload(add(str, 32))
        }
    }
}
