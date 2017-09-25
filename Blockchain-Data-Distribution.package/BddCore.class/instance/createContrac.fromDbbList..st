basic
createContrac: aContractName fromDbbList: aDbbList
	"comment stating purpose of message"
	| outStream |
	
	outStream := String new writeStream.
	outStream nextPutAll: 'pragma solidity^0.4.16;'.
	outStream cr; cr.
	outStream nextPutAll: ('contract ',aContractName).
	"Add Inheritance speficifiers if applicable -- not yet implemented"
	outStream nextPutAll: ' {'; cr.
	
	aDbbList do: [ :dbb | dbb isBlockchain ifTrue: [outStream nextPutAll: '    '. dbb asContractData: outStream. outStream cr. ]].	

	"Ending the contract"
	outStream cr; nextPutAll: '}'; cr.
	outStream flush.
	outStream close.
	
	^ outStream