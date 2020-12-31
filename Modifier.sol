pragma solidity ^0.4.0;

contract HelloWorld {
   
    string  word = "Hello World";
    address issuer; 
   
    function HelloWorld()
    {
            issuer = msg.sender;
    }
    modifier ifissuer()
    {
        if (issuer != msg.sender)
        {
            throw;
        }
        else
        {
        _;
        }
    }
    
    function getword() constant returns(string)
    {
        return word;
    }
    function setword (string newword) ifissuer returns(string)
    {
        word = newword;
        return word;

    }
    
    
}
