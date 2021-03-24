// +build ignore
package main

import (
	"log"
	"net/http"
	"time"
)

func handler(w http.ResponseWriter, r *http.Request) {
    time.Sleep(1 * time.Second)
}

func main(){
    log.Print("Server kicking on")
    http.HandleFunc("/", handler)
    // http.ListenAndServe blocks until error
    // that's why it's returned to log.Fatal()
    log.Fatal(http.ListenAndServe(":8080", nil))
}
