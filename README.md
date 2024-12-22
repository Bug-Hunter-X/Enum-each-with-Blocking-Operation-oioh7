# Elixir Enum.each with Blocking Operation

This example demonstrates a potential issue when using `Enum.each` in Elixir with an operation that could block the process.  The `Process.sleep` function simulates a long-running task.  This causes the output of `IO.puts` to become unpredictable and not strictly sequential as you might expect, because the `Enum.each` is not guaranteed to be atomic.

## Problem
The code uses `Enum.each` to iterate over a list and prints each element. However, when a long-running operation (simulated by `Process.sleep`) is performed for a specific element, the output order might not be sequential. This is because `Enum.each` doesn't implicitly guarantee that operations within the function will complete before processing the next element in the list. Other processes or tasks can potentially interleave. 

## Solution (See bugSolution.ex)