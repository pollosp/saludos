package main

import (
  "net/http"
  "io/ioutil"
  "os"
  "log"
)

func main() {
  logger := log.New(os.Stdout, "http: ", log.LstdFlags)
	logger.Println("Server is starting...")
  http.HandleFunc("/", saludos)
  http.ListenAndServe(":8000", nil)
}

func saludos(w http.ResponseWriter, r *http.Request) {

  file, _ := ioutil.ReadFile(os.Args[1])

  w.Header().Set("Content-Type", "application/json")
  w.Write(file)
}
