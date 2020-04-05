pragma solidity ^0.5.1;


contract FunctionExample{
    
    function sampleFunction() public returns(string memory ){
    return "I am the return value ";
    }
    
    
    //The above code shows a sample signature of function, first keyword function then functionName visibility(that can be private, public,internal external)
    //then returns keyword is used which specifies the data type of variable we are returning, it can be multiple.
    //we have used memory which specifies the data location, there are two types of data location provided by solidity 1.Memory 2.storage
    //memory stores the value temporaary and dosen't add to the storage so it dosen't get added to blockchain.this reduces the memory required to 
    //store the variable and they get earased once function execution is completed.
    //The gas required to complete this task is very low as compared ti that of storage
}
