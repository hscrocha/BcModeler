meta-object-protocol
bddForHasVoted
	^ BddItem new
		name: 'hasVoted';
		bcType: 'bool';
		isBlockchain: true;
		isDatabase: true;
		dbType: 'boolean'