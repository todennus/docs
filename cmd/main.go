package main

import (
	"github.com/spf13/cobra"
	"github.com/todennus/docs/cmd/definition"
	"github.com/todennus/docs/cmd/swagger"
	_ "github.com/todennus/docs/swagger"
)

var rootCommand = &cobra.Command{
	Use:   "docs",
	Short: "Todennus docs CLI",
}

func main() {
	rootCommand.AddCommand(definition.Command)
	rootCommand.AddCommand(swagger.Command)

	if err := rootCommand.Execute(); err != nil {
		panic(err)
	}
}
