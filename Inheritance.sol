pragma solidity >=0.4.0 <0.7.0;

contract helloFunctionPloymorphism {
 
 function getVariableData(int8 data) public pure returns(int8 output) {
 return data;
 }
function getVariableData(int16 data) public pure returns(int16 output) {
 return data;
 }
}

contract ParentContract{
    
uint internal simpleInteger;

function SetInteger(uint _value) public{
    simpleInteger = _value;
}

function GetInteger() public view returns (uint) {
 return 10;
 }
}
contract ChildContract is ParentContract {
 
 function GetInteger() public view returns (uint) {
 return simpleInteger;
 }
}