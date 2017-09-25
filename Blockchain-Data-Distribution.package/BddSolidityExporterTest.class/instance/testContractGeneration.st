tests
testContractGeneration
	| output |
	output := BddSolidityExporter new export: self testModel.
	self
		assert: output contents
		equals:
			'pragma solidity^0.4.16;

contract ContractName {
    uint public price;
    address private owner;
    string public name = ''product'';
    uint private id;
    address public client;

}
'