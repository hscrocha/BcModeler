printing
asContractData: outStream
	"Format the data item as a source code data item to be placed in a solidity contract"

	| bcitems |
	bcitems := items select: [ :each | each isBlockchain ].
	outStream
		nextPutAll: self spacing , 'struct ' , self name , ' {';
		cr.
	bcitems
		do: [ :bdd | 
			outStream nextPutAll: self spacing , '    '.
			bdd asStructItem: outStream.
			outStream
				nextPutAll: ';';
				cr. ].
	outStream
		nextPutAll: self spacing , '}';
		cr.
	^ outStream