printing
asStructItem: aStream
	self isBlockchain
		ifFalse: [ ^ self ].
	aStream nextPutAll: self bcType.
	self isArray
		ifTrue: [ aStream nextPutAll: '[]' ].
			"Type StorageLocation? Identifier"
	aStream
		nextPutAll: ' ';
		nextPutAll: self name.
