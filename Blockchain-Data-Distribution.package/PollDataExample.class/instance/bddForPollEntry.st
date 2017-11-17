meta-object-protocol
bddForPollEntry
	| struct |
	struct := BddStruct new.
	struct
		name: 'PollEntry';
		isBlockchain: true.
	struct addClass: PollEntryExample.
	"It is possible to add each struct item separately"
	"struct
		add:
			(BddItem new
				name: 'user';
				bcType: 'address';
				isBlockchain: true);
		add:
			(BddItem new
				name: 'choice';
				bcType: 'Choice';
				isBlockchain: true);
		add:
			(BddItem new
				name: 'hasVoted';
				bcType: 'bool';
				isBlockchain: true)."
	^ struct