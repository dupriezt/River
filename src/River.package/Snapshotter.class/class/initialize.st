as yet unclassified
initialize
	snapshots := LinkedList new.
	snapshotCounter := 0.
	relativePathToOriginalImageFile := './', self imageName, '.image'.