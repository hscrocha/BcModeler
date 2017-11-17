export
export: aClass generator: aBddGeneratorClass
	| BddItems |
	BddItems := BddCore new getBddDataItems: aClass.
	^ aBddGeneratorClass new export: BddItems.
	 