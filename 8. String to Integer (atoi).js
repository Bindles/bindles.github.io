// 8. String to Integer (atoi)
s = "42"
/**
 * @param {string} s
 * @return {number}
 */
var myAtoi = function(s) {
    let num = parseInt(s, 10);
    if (isNaN(num)) return 0;
    return Math.max(-2147483648, Math.min(num, 2147483647));
};

//MISC

// The 10 in parseInt(s, 10) is the radix or base that parseInt should use when parsing the string s. It specifies that the number should be parsed as a decimal number (base 10).

// In JavaScript, the parseInt function can interpret numbers in different bases. If the radix parameter is omitted, JavaScript assumes the following:

// If the string begins with "0x" or "0X", it will be parsed as a hexadecimal number (base 16).
// If the string begins with "0", it will be parsed as an octal number (base 8).
// Otherwise, it will be parsed as a decimal number (base 10).
// Specifying the radix parameter explicitly helps avoid confusion and ensures consistent behavior across different JavaScript implementations. It's considered good practice to always provide the radix to avoid unexpected results, especially when dealing with non-decimal numbers or when working with different JavaScript environments.

// So, while the 10 is not strictly required for decimal numbers, it's a good practice to include it for clarity and to prevent any potential issues with parsing different types of numeric strings.