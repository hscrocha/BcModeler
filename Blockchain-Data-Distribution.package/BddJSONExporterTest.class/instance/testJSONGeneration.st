tests
testJSONGeneration
	| output |
	output := BddJSONExporter new export: self testModel.
	self
		assert: output contents
		equals:
			'{"price":"", "photos":"", "name":"''product''", "description":"", "stockedItems":"", "id":""}'