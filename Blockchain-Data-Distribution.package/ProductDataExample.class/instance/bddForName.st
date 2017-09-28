meta-object-protocol
bddForName
	^ BddItem new name: 'name'; dbType: 'varchar'; bcType: 'string'; isBlockchain: true; isDatabase: true; bcVisibility: 'public'; initialValue: '''product'''.