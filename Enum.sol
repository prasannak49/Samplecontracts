pragma solidity >=0.4.0 <0.7.0;

contract mycontract {
	enum State {Waiting, Ready, Active}
	State public state;
    ufixed16x2 var1;
    string public str1;

	constructor() public {
		state = State.Waiting;
        str1 = "My first Contract";
		//var1=128.1;
	}
	function activate() public {
		state = State.Active;
	}
	
	function ready() public {
		state = State.Ready;
	}
	
	function isActive() public view returns(bool){
		
		if (state == State.Active)
		    return true;
		    else
		        return false;
	}

}

