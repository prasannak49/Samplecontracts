pragma solidity >=0.4.0 <0.7.0;
/*first Contract

Set and Get Example */



contract SimpleStorage {
    uint storedData;
    constructor() public {
        storedData = 100;
    }
    function set(uint x) public {
        storedData = x;
        storedData++;
    }
    //This is my first contract
    function get() public view returns (uint) {
        return storedData;
    }
}






