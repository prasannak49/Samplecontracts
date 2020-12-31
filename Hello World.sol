//Hello World with contract address 

pragma solidity ^0.4.0;

contract HelloWorld {
    string  word = "Hello World";
    address issuer; 
    function HelloWorld()
    {
            issuer = msg.sender;
            }
    
    
    function getword() constant returns(string)
    {
        return word;
    }
    function setword (string newword) returns(string)
    {
       if (issuer != msg.sender)
       {
           word = "Not a owner";
           return word;
       }
        word = newword;
        return word;

    }
    
    
}