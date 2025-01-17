# VHDL Integer Overflow in Multiplier

This repository demonstrates a common error in VHDL: integer overflow in arithmetic operations.  The example is a simple multiplier that fails to handle cases where the product of two input integers exceeds the range of the `INTEGER` data type.

## Problem

The original `multiplier.vhdl` code performs integer multiplication without checking for potential overflow.  If the result of `a * b` exceeds the maximum value representable by an `INTEGER`, the result will wrap around, leading to incorrect output.

## Solution

The `multiplier_fixed.vhdl` provides a solution that addresses this issue by using a larger data type (`signed` or `unsigned`) to represent the product, ensuring that all possible results can be stored without overflow.  Proper error handling or saturation could also be implemented, depending on the application's requirements.

## How to Use

1. Clone this repository.
2. Simulate the original `multiplier.vhdl` with inputs that cause overflow to observe the incorrect behavior.
3. Simulate the `multiplier_fixed.vhdl` to see the correct, overflow-safe operation.
