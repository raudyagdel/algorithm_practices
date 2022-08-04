package main

import "fmt"

func main() {
	t := 0
	fmt.Scanf("%d", &t)
	for i := 0; i < t; i++ {
		c, s, p := 0, 0, 0
		for {
			p = s
			n, err := fmt.Scanf("%c", &s)
			if n == 0 || err != nil || s == 13 {
				break
			}
			if p != 0 && p == s {
				c++
			}
		}
		fmt.Println(c)
	}
}
