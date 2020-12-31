pragma solidity >=0.4.0 <0.7.0;

import "./SafeMath.sol";

contract mycontract {

    uint8 public var1;
    int constant var2 = 10;
    uint public data;
    uint public data2;
    bool public b1;
    bool public b2;
    address public addr;
    bytes32 public hash;
    bytes32 public hash256;
    constructor() public {
       
        //var1=256;
        var1=255;
        //var2=23;
        
    }
     function pub(uint a) public
     {
         data = a;
         setData(++data);
         //prv(data--);
         data = addmod (11,20,5);
         data2 = mulmod (12,4,5);
        
        data = SafeMath.mul(10,20);
         
     }
      function prv(uint a) private pure returns (uint b) { 
         //data = 12;
          return a + 1; 
          
      }
      
      function setData(uint a) internal {
          data = a;
        }
    
    function chkArr(uint size) public {
        uint[] memory a = new uint[](8);
        bytes memory b = new bytes(size);
        a[7]=9;
    }
    function chkbitwise() public
    {
        b1 = true && false;
        b2 = true || false;
        data = 16;
        data2 = data << 1;
    }
    function chkhash() public
    {
        hash = keccak256("Edureka Blockchain");
        hash256 = sha256("Block 2") ;
        
    }   
     
}

/*contract Test {
  function() external { x = 1; }
  uint public x;
}

contract Caller {
  function callTest(address testAddress) public {
    Test(testAddress);//.call('0xabcdefgh'); 
  }
}*/

