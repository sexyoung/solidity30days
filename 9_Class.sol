// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
    practice struct
 */
contract Class {
    struct Student {
        uint score;
        string name;
        bool active;
    }
    mapping(uint => Student) students;

    modifier ActiveStudent(uint id) {
        require(students[id].active, 'Student is inactive');
        _;
    }

    function register(uint id, string calldata name) public {
        students[id] = Student({name: name, score: 0, active: true});
    }

    function modifyScore(uint id, uint score) public ActiveStudent(id) {
        students[id].score = score;
    }

    function getStudent(uint id) public ActiveStudent(id) view returns (string memory, uint) {
        return (students[id].name, students[id].score);
    }
}