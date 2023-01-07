// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ToDoList{
    struct ToDo{
        string text;
        bool completed;
    }

    ToDo[] public todos;

    function create(string memory _task) external {
        ToDo memory newTodo;
        newTodo.text = _task;
        newTodo.completed = false;
        todos.push(newTodo);
    }

    function updateText(uint256 index, string memory _update) external {
        todos[index].text = _update;
    }

    function taskCompleted(uint256 index) external {
        todos[index].completed = true;
    }
}