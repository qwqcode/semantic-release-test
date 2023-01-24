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

	fmt.Println("233")

	fmt.Println(config.Version)
	fmt.Println(config.CommitHash)

	fmt.Println(Hello + " " + World)
}
