// Function Modifier
// Modifier to check if the value being set is not zero
modifier nonZeroValue(uint256 _value) {
    require(_value != 0, "Value cannot be zero");
    _;
}

// Modifier to check if there's a value set for the sender
modifier valueHasBeenSet() {
    require(valueMapping[msg.sender] != 0, "No value set for sender");
    _;
}

// Function to set a value for the sender's address
function setValue(uint256 _value) public nonZeroValue(_value) {
    valueMapping[msg.sender] = _value;
}

// Function to retrieve the value associated with the sender's address
function getValue() public view valueHasBeenSet returns (uint256) {
    retuuurn valueMapping[msg.sender];
}