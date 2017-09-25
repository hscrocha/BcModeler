private
extractDbbDataItensFromMethods: aMethodList
	| lstDbb instance |
	lstDbb := LinkedList new.
	instance := nil.
	aMethodList isEmptyOrNil 
		ifTrue: [ ^nil. ]
		ifFalse: [ instance := (aMethodList at:1) methodClass new. ].
	
	aMethodList do: [ :method | lstDbb add: (self executeMethod: method fromInstance: instance) ].
	^ lstDbb.
	