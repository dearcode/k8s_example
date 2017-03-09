package main 

import (
	"fmt"
	"net/http"
)

func sayhelloName(w http.ResponseWriter, r *http.Request){
	fmt.Fprintf(w, "hello world, version:VERSION")
}

func main() {
	http.HandleFunc("/", sayhelloName)
	panic(http.ListenAndServe(":80", nil))
}
