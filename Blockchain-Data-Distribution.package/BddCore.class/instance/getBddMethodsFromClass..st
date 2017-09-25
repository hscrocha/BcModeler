private
getBddMethodsFromClass: aClass
	"comment stating purpose of message"
	^ aClass methods select: [ :method | 'bdd*' match: method selector asString ].
	"^ aClass methods select: [ :method | method protocol = 'meta-object-protocol' ]."