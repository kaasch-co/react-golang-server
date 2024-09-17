package main

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

func main() {

	// Setup router
	router := gin.New()
	router.Use(gin.Recovery())
	router.Delims("{[{", "}]}")	// Change template delimiters, ensure compability with Webpack
	router.Static("/static", "./public")
	router.LoadHTMLGlob("templates/*")

	// Endpoints / routes
	router.GET("/", func(c *gin.Context) {
		c.HTML(200, "index.html", nil)
	})

	// Run the server
	fmt.Print("Running...")
	router.Run("127.0.0.1:5001")
}
