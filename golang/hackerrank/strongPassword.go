package main

import (
	"fmt"
	"unicode"
)

func main() {
	var str string
	var n, c int = 0, 0
	r := map[string]int{
		"one_digit":   1,
		"one_lower":   1,
		"one_upper":   1,
		"one_special": 1,
	}
	fmt.Scan(&n)
	fmt.Scan(&str)

	for _, s := range str {
		if unicode.IsDigit(s) == true {
			r["one_digit"] = 0
		} else if unicode.IsUpper(s) == true {
			r["one_upper"] = 0
		} else if unicode.IsLower(s) == true {
			r["one_lower"] = 0
		} else {
			r["one_special"] = 0
		}
	}

	for _, e := range r {
		c += e
	}

	if 6-n > c {
		c = 6 - n
	}

	fmt.Print(c)

}
