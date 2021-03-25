// +build ignore
package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"runtime"
	"time"
)

var count = 0;
func handler(w http.ResponseWriter, r *http.Request) {
    f, err := os.Open(os.DevNull)
    if err != nil {
        panic(err)
    }
    defer f.Close()

    n := runtime.NumCPU()
    runtime.GOMAXPROCS(n)

    for i := 0; i < n; i++ {
        go func() {
            for {
                fmt.Fprintf(f, ".")
            }
        }()
    }

    time.Sleep(2 * time.Second)
    count += 1
    log.Printf("finished %d request", count)
}

func main(){
    log.Print("Server kicking on")
    http.HandleFunc("/", handler)
    // http.ListenAndServe blocks until error
    // that's why it's returned to log.Fatal()
    log.Fatal(http.ListenAndServe(":8080", nil))
}
