// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library Quicksort {
    function quicksort(uint256[] memory array) public pure returns(uint256[] memory sorted) {
        if(array.length <= 1) {
            return array;
        }
        uint pivot;
        uint length = array.length;
        pivot = array[length / 2];
        uint[] memory left = new uint[](length / 2);
        uint[] memory right = new uint[](length - length / 2);
        uint j = 0;
        uint k = 0;
        for(uint i = 0; i < length; i++) {
            if(array[i] < pivot) {
                left[j] = array[i];
                j++;
            }
            else {
                right[k] = array[i];
                k++;
            }
        }
        left = quicksort(left);
        right = quicksort(right);
        
        for(uint i = 0; i < j; i++) {
            sorted[i] = left[i];
            
            sorted[j + i] = right[i];
        }
    }

}
