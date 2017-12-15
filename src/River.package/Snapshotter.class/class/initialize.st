as yet unclassified
initialize
	snapshots ifNotNil: [ :snaps| snaps do: [ :snap | snap deleteFromDisc ] ].
	snapshots := LinkedList new.
	snapshotCounter := 0.
	relativePathToOriginalImageFile := './', self imageName, '.image'.