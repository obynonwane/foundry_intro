// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    int private count;

    constructor(int _count) {
        count = _count;
    }

    function incrementCounter() public {
        count += 1;
    }

    function decrementCounter() public {
        count -= 1;
    }

    function getCount() public view returns (int) {
        return count;
    }
}
// First script: first_foundry_proj % forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
// Second script: first_foundry_proj % forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
// Make cast call: cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "getCount()(int)"
// Execute transaction: cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "getCount()(int)" --private-key $PRIVATE_KEY
// https://www.youtube.com/watch?v=uelA2U9TbgM
