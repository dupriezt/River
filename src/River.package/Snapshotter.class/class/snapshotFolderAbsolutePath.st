as yet unclassified
snapshotFolderAbsolutePath
	| currentFilePath stringArray baseFilePath |
	currentFilePath := SmalltalkImage current imagePath .
	stringArray := currentFilePath substrings: '/'.
	baseFilePath := (currentFilePath truncateTo: (currentFilePath size - stringArray last size)),self snapshotFolderNamePlusSlash.
	^ baseFilePath.
	