as yet unclassified
latestSnapshot
	(self snapshots size ~= 0) 
		ifTrue: [ ^ self snapshots last ]
		ifFalse: [ self error: 'No snapshots exist' ]