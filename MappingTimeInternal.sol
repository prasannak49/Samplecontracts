pragma solidity >=0.4.0 <0.7.0;


contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;

  address owner;
    uint256 startTime;

  modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier onlyWhileOpen() {
        require(block.timestamp >= startTime);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor() public {
        owner = msg.sender;
        startTime = 1544668513; // Update this value
    }

    function addPerson(
        string memory _firstName,
        string memory _lastName
    )
        public
        onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}