printing
printOn: aStream

	super printOn: aStream.
	name ifNotNil: [   
		aStream nextPutAll: '(', name , ')']