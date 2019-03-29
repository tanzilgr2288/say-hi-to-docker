package main

// @author Kevin Setiawan Tanzil [Tom Cruise] - Kevin@alterra.id
// @desc this is hello world
// @since 18 March 2019

// import lib & package
import (
	"net/http"

	"github.com/labstack/echo"

	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql" //import driver
)

var (
	// DB global
	DB = MysqlConnect("fake")
)

// Temp temporary struct
type Temp struct {
	ID   int64
	Text string
}

// Main Function
func main() {
	e := echo.New()
	e.GET("/", func(c echo.Context) error {
		var temp Temp
		temp.Text = "kevin keren"
		DB.Create(&temp)
		return c.String(http.StatusOK, "Hello, World!")
	})
	// Start using port 3001
	// if error just print
	e.Logger.Fatal(e.Start(":3001"))
}

// MysqlConnect connect to mysql using config name. return *gorm.DB incstance
func MysqlConnect(configName string) *gorm.DB {
	connection, err := gorm.Open("mysql", "docker:docker@tcp(db:3306)/kevin?charset=utf8&parseTime=True&loc=Local")
	if err != nil {
		panic(err)
	}

	return connection
}
