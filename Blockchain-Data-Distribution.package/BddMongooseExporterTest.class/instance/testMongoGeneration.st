tests
testMongoGeneration
	| output |
	output := BddMongooseExporter new
		export: (BddCore new buildModelFrom: ProductDataExample).
	self
		assert: output contents
		equals:
			 'var mongoose = require(''mongoose'');
var myschema = new mongoose.Schema({
    price: { type: Real },
    photos: { type: Blob },
    name: { type: Varchar, default: ''product'' },
    description: { type: Varchar },
    stockedItems: { type: Int },
    id: { type: Int },

}); //closing shcema definition'