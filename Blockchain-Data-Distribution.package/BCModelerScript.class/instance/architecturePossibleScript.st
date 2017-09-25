as yet unclassified
architecturePossibleScript

	| arch |
	arch := BDDArchitecture new.
	arch publicDB: #MongoBackEnd new configFile: '....'.
	arch privateDB: #NodeBackend new configFile: '...'