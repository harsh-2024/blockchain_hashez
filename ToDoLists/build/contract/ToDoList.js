var ToDoList = artifacts.require("./contract/ToDoList.sol");

module.exports = function(deployer){
    deployer.deploy(ToDoList);
};