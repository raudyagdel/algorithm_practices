package main

import "fmt"

func solution(s []int) bool {
	var (
		p = s[0]
		q = s[0]
		c = 0
	)
	for i, v := range s[1:] {
		if p < v {
			q = p
			p = v
		} else {
			c++
			if c > 1 {
				return false
			}
			if i < 1 || q < v {
				p = v
			}
		}
	}
	return true
}

func main() {
	n := 0
	fmt.Scanln(&n)
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}
	fmt.Println(solution(nums))
}
