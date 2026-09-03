// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Day07 {

    struct Student {
        uint256 id;
        string name;
        address studentAddr;
    }

    Student[] public students;

    // Create
    function addStudent(uint256 _id, string memory _name) public {
        students.push(Student(_id, _name, msg.sender));
    }

    // Read
    function getStudent(uint256 _index) public view returns (Student memory) {
        return students[_index];
    }

    // Update
    function updateStudentName(
        uint256 _index,
        string memory _newName
    ) public {
        students[_index].name = _newName;
    }

    // Delete
    function deleteStudent(uint256 _index) public {
        delete students[_index];
    }
}