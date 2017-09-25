private
createJsonFromDbbList3: aDbbList
	"Creates a JSON representation of the data that is marked as database "

	| first |
	outStream nextPutAll: '{'.
	first := true.
	aDbbList
		do: [ :dbb | 
			dbb isDatabase
				ifTrue: [ first
						ifFalse: [ outStream nextPutAll: ', ' ].
					dbb asJsonItem: outStream.
					first := false ] ].
	outStream nextPutAll: '}'.
	outStream flush.
	^ outStream