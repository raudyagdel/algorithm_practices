package main

import (
	"fmt"
	"unicode"
)

func main() {
	var str string
	var c int = 1
	fmt.Scan(&str)
	for _, s := range str {
		if unicode.IsUpper(s) {
			c++
		}

	}
	fmt.Println(c)
}
