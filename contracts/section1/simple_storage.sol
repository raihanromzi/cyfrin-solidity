// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {

    // Basic type: Boolean, Uint, Int, Address, Bytes
    bool flag = true;
    uint256 number1 = 88; // default = 256, 0-255
    int256 number2 = -88; // default = 256, -255 to 255
    string string1 = "hello world";
    address address1 = 0x60d447c7704F3f9077E52FB4E581E996175FAE3a;
    bytes32 bytess1 = "cat"; //0x223, default = 32

    // Simple Storage
    // Visibility: Public, Private, External, Internal (default)
    uint internal favoriteNumber; // 0, state variable

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // View (read state), Pure (cannot modify, cannot read) -> pure function
    function getFavoriteNumber() public view returns(uint) {
        return favoriteNumber;
    }

    // Array
    uint256[] listOfFavoriteNumber; // []
    
    // Struct -> create own data type
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPerson; // dynamic
    Person[3] public staticArrayPerson; // static

    Person public myPerson1 = Person(7, "Raihan");
    Person public myPerson2 = Person({favoriteNumber: 7, name: "Raihan"});

    // Calldata (cannot modify), Memory (modify) -> temporary data
    
    // Storage -> variable, outside function, not used for short duration / temp
    uint storageVariable;

    // primitive type not need a memory/calldata/storage
    function addPerson(uint256 _favoriteNumber, string memory name) public {
        Person memory newPerson = Person(_favoriteNumber, name);
        listOfPerson.push(newPerson);
    }

    // Mapping -> Dictionary / Object in JS / HashMap
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPersonWithMapping(uint256 _favoriteNumber, string memory _name) public {
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


}



