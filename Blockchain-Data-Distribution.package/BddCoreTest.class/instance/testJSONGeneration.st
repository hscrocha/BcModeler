tests
testJSONGeneration
	| core |
	core := BddCore new.
	core addGenerator: BddJSONExporter inMemory.
	core buildModelFrom: ProductDataExample.
	core generate.
	self assert: true