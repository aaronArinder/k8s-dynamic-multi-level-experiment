// +build ignore
package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hi there, I love %s!", r.URL.Path[1:])
}

func main(){
    http.HandleFunc("/", handler)
    // http.ListenAndServe blocks until error
    // that's why it's returned to log.Fatal()
    log.Fatal(http.ListenAndServe(":8080", nil))
}

