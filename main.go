package main

import (
	"fmt"

	"github.com/qwqcode/test/config"
)

const (
	Hello = "Hello"
	World = "World 1"
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
