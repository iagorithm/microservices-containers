package main

import (
	"encoding/json"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, _ *http.Request) {
		w.Header().Set("Content-Type", "application/json; charset=utf-8")
		json.NewEncoder(w).Encode(map[string]string{"message": "Hello, World from Go!"})
	})

	log.Println("Go API listening on port 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
