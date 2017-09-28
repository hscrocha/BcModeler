meta-object-protocol
bddForChoice
	| enum |
	enum := BddEnum new.
	enum
		name: 'Choice';
		isBlockchain: true;
		addAll: #('POSITIVE' 'NEGATIVE' 'NEUTRAL').
	^ enum