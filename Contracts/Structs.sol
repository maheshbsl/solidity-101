// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*

You can define your own type by creating a struct
THey are useful for grouping together related data.
Structs can be declared outside of a contract and imported in another contract.

Syntax
-------
struct StructName {
    datatype1 variable1;
    datatype2 variable2;    
}
*/

contract Structs {
    //define a struct named Todos
    struct Todo {
        string task;
        bool completed;
    }

    //Array of 'Todo' struct
    Todo[] public todoArr;

    function create(string calldata _task, bool _isCompleted) public {
        //3 ways to initialize a struct
        //- calling it like a function
        todoArr.push(Todo(_task,_isCompleted));

        // key value mapping
        todoArr.push(Todo({task: _task, completed: _isCompleted}));

        // initialize an empty struct and then udate it
        Todo memory todo;
        todo.task = _task;
        todo.completed = _isCompleted;

        //and push it to array
        todoArr.push(todo);
    }

    function length() public view returns(uint256){
        return todoArr.length;
    }

    //update task and complected or not
    function updateTask(uint256 _index, string calldata _task, bool _isCompleted) public {
        Todo storage todo = todoArr[_index];
        todo.task = _task;
        todo.completed = _isCompleted;
    }
}