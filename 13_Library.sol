// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/**
- 沒有儲存的功能，意味著不可以使用狀態變數，但可以處理其他合約的狀態變數
- 不能使用 payable 函式
- 不能使用 event log
- 不能被繼承，但可以連接其他函式庫
 */

library Set {
    struct Data {
        mapping (int => bool) data;
    }

    function Insert(Data storage self, int key) public returns (bool) {
        if(self.data[key]) return false;
        self.data[key] = true;
        return true;
    }

    function Remove(Data storage self, int key) public returns (bool) {
        if(!self.data[key]) return false;
        delete self.data[key];
        return true;
    }

    function Contain(Data storage self, int key) public view returns (bool) {
        return self.data[key];
    }
}

contract Main {
    Set.Data set;
    function insert(int key) public returns (bool) {
        return Set.Insert(set, key);
    }
    function remove(int key) public returns (bool) {
        return Set.Remove(set, key);
    }
    function contain(int key) public view returns (bool) {
        return Set.Contain(set, key);
    }
}