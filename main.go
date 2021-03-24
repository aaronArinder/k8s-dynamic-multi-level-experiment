// +build ignore
package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "hi there")
}

func main(){
    log.Print("Server kicking on")
    http.HandleFunc("/", handler)
    // http.ListenAndServe blocks until error
    // that's why it's returned to log.Fatal()
    log.Fatal(http.ListenAndServe(":8080", nil))
}
