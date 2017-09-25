printing
asContractData
	"Format the data item as a source code data item to be placed in a solidity contract"
	| outStream |
	outStream := String new writeStream .
	self asContractData: outStream.
	^ outStream .