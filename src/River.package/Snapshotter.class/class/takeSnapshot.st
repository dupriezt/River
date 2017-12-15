as yet unclassified
takeSnapshot
	| timestamp newSnapshotName newSnapshotFilePath snapshot |
	timestamp := Time current.
	newSnapshotName := self generateSnapshotName.
	newSnapshotFilePath := self generateSnapshotFilePath: newSnapshotName.
	snapshot := Snapshot new.
	snapshot imageFilePath: newSnapshotFilePath .
	snapshot timestamp: timestamp.
	self snapshots add: snapshot.
	SmalltalkImage current backupTo: self snapshotFolderRelativePath, newSnapshotName.
	
	
	