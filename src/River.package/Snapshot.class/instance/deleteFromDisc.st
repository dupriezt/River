as yet unclassified
deleteFromDisc
	"Delete from the disc the .image and .changes file corresponding to this snapshot"
	OSSUnixSubprocess new
	command: 'rm';
	arguments: {self imageFilePath, '.image'};
	"redirectStdout;"
	runAndWaitOnExitDo: [ ":process :outString  |
		outString inspect"
	].

	OSSUnixSubprocess new
	command: 'rm';
	arguments: {self imageFilePath, '.changes'};
	"redirectStdout;"
	runAndWaitOnExitDo: [ ":process :outString  |
		outString inspect"
	]