private
getBddDataItems: aClass
	^ self extractDbbDataItensFromMethods: (self getBddMethodsFromClass: aClass).