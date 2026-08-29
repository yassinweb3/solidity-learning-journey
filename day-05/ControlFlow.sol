// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Day05 {
 function checkNumber(int256 number) public pure returns (string memory) {
    if (number > 0) {
        return "Positive";
    }
     else if (number< 0) {
        return "Negative";  
          }
       else {
         return " Zero ";
       }   
}
function countSum() public pure returns (uint256) {
    uint256 total = 0;

    for (uint256 i = 1; i <= 10; i++) {
        total += i;
    }

    return total;
}
function countSum2() public pure returns (uint256) {
    uint256 total = 0;
    uint256 i = 1;

    while (i <= 10) {
        total += i;
        i++;
    }

    return total;
}
}