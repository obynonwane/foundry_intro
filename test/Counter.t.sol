// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function test_getCount() public {
        int value = counter.getCount();
        assertEq(value, 10);

        emit log_named_int("the value is:", value);
    }

    function test_Increment() public {
        counter.incrementCounter();
        int value = counter.getCount();
        assertEq(value, 11);

        emit log_named_int("the value is:", value);
    }

    function test_DecrementCounter() public {
        counter.decrementCounter();
        int value = counter.getCount();
        assertEq(value, 9);

        emit log_named_int("the value is:", value);
    }

    function testFuzz_IncrementDecrement(int x) public {
        // Ensure x is within a reasonable range to avoid overflow issues
        x = bound(x, -1000, 1000);

        // Set counter to x
        counter = new Counter(x);

        // Increment and check
        counter.incrementCounter();
        assertEq(counter.getCount(), x + 1);

        // Decrement and check
        counter.decrementCounter();
        assertEq(counter.getCount(), x);
    }
}
