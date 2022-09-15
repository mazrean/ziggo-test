package main

import (
	/*
		#include <stdint.h>
		#cgo LDFLAGS: -L zig -lmain
		#include <zig/main.h>
	*/
	"C"
	"fmt"
)

func main() {
	fmt.Println(C.add(1, 2))
}
