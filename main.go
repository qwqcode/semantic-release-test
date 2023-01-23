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

	fmt.Println(config.Version)

	fmt.Println(Hello + " " + World)
}
