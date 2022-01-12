pragma solidity >=0.5.0 <=0.9.0;

contract ToDoList {
    uint public taskCount=0;  //state variable

    struct Task {
            uint id;
            string content;
            bool completed;
    }

    mapping( uint => Task) public tasks;

    constructor() public {
        createTask("Hello Dapps");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}

