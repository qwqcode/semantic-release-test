package main

import (
	"fmt"

	"github.com/qwqcode/test/config"
)

const (
	Hello = "Hello"
	World = "World"
)

func main() {
	// make some changes
	foo()

	fmt.Println(Hello + " " + World)
}

func foo() {

	fmt.Println("1234")

	fmt.Println(config.Version)
	fmt.Println(config.CommitHash)
}
