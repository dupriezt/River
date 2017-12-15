as yet unclassified
open
	| pathToVM |
	pathToVM := SmalltalkImage current vm fileName.
	OSSUnixSubprocess new
	command: pathToVM;
	arguments: {self imageFilePath};
	"redirectStdout;"
	runAndWaitOnExitDo: [ ":process :outString  |
		outString inspect"
	]