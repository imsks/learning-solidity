// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Struct {
    struct Todo {
        string text;
        bool isCompleted;
    }

    // Declare struct
    Todo[] public todos;

    // Create a todo
    function create(string calldata _text) public {
        // 1. Method 1
        todos.push(Todo(_text, false));

        // 2. Method 2
        todos.push(Todo({text: _text, isCompleted: false}));
    }

    // Get todos
    function get() public view returns (Todo[] memory) {
        return todos;
    }

    // Update todo
    function update(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
        todo.isCompleted = true;
    }
}
