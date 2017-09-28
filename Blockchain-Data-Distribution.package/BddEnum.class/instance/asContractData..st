printing
asContractData: outStream
	"Format the data item as a source code data item to be placed in a solidity contract"

	outStream nextPutAll: 'enum ' , self name , ' {'.
	items
		do: [ :each | outStream nextPutAll: each ]
		separatedBy: [ outStream nextPutAll: ', ' ].
	outStream
		nextPutAll: ' }';
		cr.
	^ outStream