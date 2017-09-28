accessing
initialValueAsJsonFormat
	 ( #('int' 'number' 'bool' 'boolean' 'bit' 'shortint' 'longint' 'bigint' 'real' 'float' 'double' 'decimal') includes: self dbType) ifTrue: [ ^initialValue ].

	(self initialValue at:1) =$" 
	ifTrue:[ ^initialValue ].
	