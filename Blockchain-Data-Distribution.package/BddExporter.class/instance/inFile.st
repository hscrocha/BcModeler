configuration
inFile
	"do nothing since the initialize is initializing a stream in memory"

	outStream := (FileSystem workingDirectory /  self filename) writeStream.