meta-object-protocol
bddForPollEntry
	| struct |
	struct := BddStruct new.
	struct name: 'PollEntry'; isBlockchain: true.
	struct
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
				isBlockchain: true).
	^ struct