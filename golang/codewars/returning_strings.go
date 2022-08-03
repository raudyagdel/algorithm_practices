package main

import (
	"fmt"
	"strings"
)

func greet_v1(name string) string {
	return "Hello, " + name + " how are you doing today?"
}

func greet_v2(name string) string {
	return fmt.Sprintf("Hello, %s how are you doing today?", name)
}

func greet_v3(name string) string {
	return strings.Join([]string{"Hello,", name, "how are you doing today?"}, " ")
}
func main() {
	var name string = "Pepe"
	fmt.Println(greet_v1(name))
	fmt.Println(greet_v2(name))
	fmt.Println(greet_v3(name))
}
