as yet unclassified
openOriginalImageFile
	| pathToVM absolutePathToOriginalImageFile |
	pathToVM := SmalltalkImage current vm fileName.
	absolutePathToOriginalImageFile := self absolutePathToThisImageFolder, self relativePathToOriginalImageFile.
	OSSUnixSubprocess new
		command: pathToVM;
		arguments: {absolutePathToOriginalImageFile};
		runAndWaitOnExitDo: [	]