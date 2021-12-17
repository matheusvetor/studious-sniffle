## Problem 
Write reliable and best practice code in ruby to calculate the check digit of given ISBN13 barcode (string) and put it into a GIT repo for us to look at.

The algorithm is:

1. Take each digit, from left to right and multiply them alternatively by 1 and 3
2. Sum those numbers
3. Take mod 10 of the summed figure
4. Subtract 10 and if the end number is 10, make it 0

Example for 978014300723:

```
=> (9×1) + (7×3) + (8×1) + (0×3) + (1×1) + (4×3) + (3×1) + (0×3) + (0×1) + (7×3) + (2×1) + (3×3)
=> 86
=> 86 mod 10 = 6
=> 10 - 6 = 4
```

Therefore the complete ISBN is: 9780143007234

## Code usage

Simply import this lib on your project or `irb`:
```
require 'lib/barcode_checker'
```

Usage:
```
BarcodeChecker.calculate_check_digit('978014300723') #=> 4
BarcodeChecker.calculate_check_digit('9780143007234') #=> raise 'The string lengh needs to be 12 digts'
BarcodeChecker.calculate_check_digit(978014300723) #=> raise 'The passing param needs to be a string'
```