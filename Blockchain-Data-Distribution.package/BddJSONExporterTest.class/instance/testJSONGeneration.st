tests
testJSONGeneration
	| output |
	output := BddJSONExporter new export: self getTestModel.
	self
		assert: output contents
		equals:
			'{"price":"", "photos":"", "name":"''product''", "description":"", "stockedItems":"", "id":""}'