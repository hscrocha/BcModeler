private
createJsonFromDbbList: aBddList
	"Creates a JSON representation of the data that is marked as database "

	| subList |
	outStream nextPutAll: '{'.
	subList := aBddList select: [ :each | each isDatabase ].
	subList
		do: [ :dbb | dbb asJsonItem: outStream ]
		separatedBy: [ outStream nextPutAll: ', ' ].
	outStream nextPutAll: '}'.
	outStream flush.
	^ outStream