package main

import (
	"fmt"

	"github.com/qwqcode/test/config"
)

const (
	Hello = "Hello 1"
	World = "World"
)

func main() {
	// make some changes
	foo()

	fmt.Println(Hello + " " + World)
}

func foo() {

	fmt.Println("123412341")

	fmt.Println(config.Version)
	fmt.Println(config.CommitHash)
}
