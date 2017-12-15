as yet unclassified
absolutePathToThisImageFolder
	| absoluteImagePath imageFileName |
	absoluteImagePath := SmalltalkImage current imagePath.
	imageFileName := (absoluteImagePath splitOn: '/') last.
	^ absoluteImagePath truncateTo: (absoluteImagePath size - imageFileName size)