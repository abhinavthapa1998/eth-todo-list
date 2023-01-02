pragma solidity ^0.8.0;

contract TodoList {
    uint256 public taskCount = 0;
    struct Task {
        uint256 id;
        string content;
        bool completed;
    }
    mapping(uint256 => Task) public tasks;

    event TaskCreated(uint256 id, string content, bool completed);

    constructor() public {
        createTask("Study Blockchain");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }
}
