basic
getDbbDataItems: aClass
	^ self extractDbbDataItensFromMethods: (self getBddMethodsFromClass: aClass).