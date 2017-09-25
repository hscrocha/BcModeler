basic
createMongooseSchemaFromDbbList: aDbbList
	"Creates a Mongoose representation of the data that is marked as database "
	| outStream |
	outStream := String new writeStream.
	outStream nextPutAll: 'var mongoose = require(''mongoose'');'; cr; nextPutAll: 'var myschema = new mongoose.Schema({'; cr.
	
	aDbbList do: [ :dbb | dbb isDatabase ifTrue: [outStream nextPutAll: '    '. dbb asMongooseSchemaItem: outStream. outStream nextPutAll: ','; cr. ]].
	
	outStream cr; nextPutAll: '}); //closing shcema definition'.
	outStream flush.
	^ outStream.