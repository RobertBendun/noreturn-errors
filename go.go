package main

import (
	"fmt"
	"os"
	"runtime"
)

func reportError(msg string) {
	_, file, line, _ := runtime.Caller(0)
	fmt.Fprintf(os.Stderr, "%s:%d: error: %s\n", file, line, msg)
	os.Exit(1)
}

func main() {
	reportError("main was not implemented yet")
}
