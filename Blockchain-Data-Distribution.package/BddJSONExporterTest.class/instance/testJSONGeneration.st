tests
testJSONGeneration
	| output |
	output := BddJSONExporter new
		export: (BddCore new buildModelFrom: ProductDataExample).
	self assert: output contents equals: '{"price":"", "photos":"", "name":"''product''", "description":"", "stockedItems":"", "id":""}'