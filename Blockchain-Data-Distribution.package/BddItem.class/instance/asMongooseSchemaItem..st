printing
asMongooseSchemaItem: aStream
	self isDatabase ifFalse: [ ^ self ].
	aStream nextPutAll: self name; nextPutAll: ': '.
	"Not yet implemented -- if it is a list of values it should be formatted differently."
	"Structures should also be formatted differently"
	aStream nextPutAll: '{ type: '; nextPutAll: self dbType capitalized.
	
	self initialValue ifNotNil: [ aStream nextPutAll: ', default: '; nextPutAll: self initialValue ].	
		
	aStream nextPutAll: ' }'.
	
