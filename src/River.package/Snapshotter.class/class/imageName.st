as yet unclassified
imageName
	| currentFilePath stringArray imageFileName imageName |
	currentFilePath := SmalltalkImage current imagePath .
	stringArray := currentFilePath substrings: '/'.
	imageFileName := stringArray last.
	imageName := (imageFileName substrings: '.') first.
	^ imageName.