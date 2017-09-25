printing
asJsonItem: aStream
	| init |
	self isDatabase ifFalse: [ ^ self ].
	aStream nextPutAll: '"'; nextPutAll: self name; nextPutAll: '":'.
	
	init := self initialValue ifNotNil: [self initialValue ] ifNil: [''].
	"Not yet implemented -- format different data"
	aStream nextPutAll: '"'; nextPutAll: init; nextPutAll: '"'.
	
