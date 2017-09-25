private
getDbbDataItems: aClass
	^ self extractDbbDataItensFromMethods: (self getBddMethodsFromClass: aClass).