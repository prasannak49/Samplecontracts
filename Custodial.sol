pragma solidity ^0.4.0;

contract custodialcontract {
    
    address client;
     bool public _check;
    
    event updatestatus (string acc, uint value);
    
    function custodialcontract()
    {
        client = msg.sender;
    }
    
    modifier ifclient()
    {
        if (msg.sender != client)
        assert(false);
        else 
        _;
    }
    
    function depositfunds() payable
    {
        updatestatus("Value is added", msg.value);
    }
    
    function getfunds() ifclient constant returns(uint)
    {
        return this.balance;
    }
    
    function withdrawlfunds(uint amount) ifclient
    {
        if (client.send(amount)) 
        _check = true;
        else 
        _check = false;
        
    }
}