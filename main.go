package main

import "fmt"

const (
	Hello = "Hello"
	World = "World"
)

func main() {
	// make some changes
	a := 1
	b := 1
	_ = fmt.Sprintln(a + b)

	fmt.Println(Hello + " " + World)
}
