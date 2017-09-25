printing
asContractData: aStream
	self isBlockchain	ifFalse: [ ^ self ].
		
	aStream nextPutAll: self bcType.
	aStream nextPutAll: ' ';	nextPutAll: self bcVisibility.
	self isBcConstant
		ifTrue: [ aStream	nextPut: ' ';	nextPutAll: 'constant' ].
	aStream nextPutAll: ' ';	nextPutAll: self name.	
	self initialValue ifNotNil: [ aStream nextPutAll: ' = '; nextPutAll: self initialValue. ].	
	aStream nextPutAll: ';'.
	