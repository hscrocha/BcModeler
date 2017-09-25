meta-object-protocol
bddForName
	^ BddDataItem new name: 'name'; dbType: 'varchar'; bcType: 'string'; isBlockchain: true; isDatabase: true; bcVisibility: 'public'; initialValue: '''product'''.