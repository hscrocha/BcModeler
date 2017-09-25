as yet unclassified
JSONGeneration
	| core |
	core := BddCore new.
	core addGenerator: BddJSONExporter inFile.
	core buildModelFrom: ProductDataExample.
	core generate