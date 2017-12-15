as yet unclassified
generateSnapshotName
	self snapshotCounter: self snapshotCounter + 1.
	^ self snapshotRootName , (snapshotCounter asString )
	