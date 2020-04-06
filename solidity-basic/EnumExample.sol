pragma solidity ^0.5.1;

contract EnumExample {
    
    enum state{
         New,
         Runnable,
         Running,
         Blocked,
         Terminated
    }
    
    state public thread_state;
    ///when calling thread_state it will return the index of state.
    
    constructor() public {
        thread_state = state.New;
    }
    
    function setRunnable() public{
        thread_state = state.Runnable;
    }
    
    function terminateThread() public{
        thread_state = state.Terminated;
    }
    
    function setRunning() public{
        thread_state = state.Running;
    }
   
