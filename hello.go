// You can edit this code!
// Click here and start typing.
package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello")
	fmt.Println(os.Getenv("name"))
}

func alterraAcademy() {
	learn := true
	getPaid := true
	if learn && getPaid {
		fmt.Println("Be Super")
	}
}
