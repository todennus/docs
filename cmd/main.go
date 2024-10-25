package main

import (
	"log/slog"
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/spf13/cobra"
	httpSwagger "github.com/swaggo/http-swagger"
	_ "github.com/todennus/docs/swagger"
)

var rootCommand = &cobra.Command{
	Use:   "swagger",
	Short: "Start a Swagger server",
	Run: func(cmd *cobra.Command, args []string) {
		r := chi.NewRouter()
		r.Get("/*", httpSwagger.WrapHandler)
		r.NotFound(func(w http.ResponseWriter, r *http.Request) {
			http.Redirect(w, r, "/", http.StatusSeeOther)
		})

		slog.Info("Server started", "address", ":8080")
		if err := http.ListenAndServe(":8080", r); err != nil {
			panic(err)
		}
	},
}

func main() {
	if err := rootCommand.Execute(); err != nil {
		panic(err)
	}
}
