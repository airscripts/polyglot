package main

import (
	"fmt"
	"polyglot/greetings"
)

func main() {
	message := greetings.Hello("Airscript")
	fmt.Println(message)
}
