pragma solidity >=0.4.0 <0.7.0;

contract MyContract {
    uint256 peopleCount = 0;

    mapping(uint => Person) people;

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}