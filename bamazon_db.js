const mysql = require("mysql")
const inquirer = require("inquirer")

// create the info for the connection for sql database
const connection = mysql.createConnection({
    host: "localhost",
    port: 8889,

    //username, password, database
    user: "root",
    password: "root",
    database: "bamazon_db"
});

// connection to mysql server/sql db
connection.connect(function (err) {
    if (err) throw err
    // display the Inventory function after the connection has prompt the user with the questions
    displayInventory()
});
console.log(connection)

let displayInventory = () => {
    //console.log("SQL Connection Established")
    connection.query("SELECT * FROM whiskey", function (err, res) {
        if (err) throw err
        for (let i = 0; i < res.length; i++) {
            console.log("product name: " + res[i].product_name)
            console.log("stock_quantity: " + res[i].stock_quantity)
            console.log("price: $" + res[i].price)
        }
        purchase()
    });
};

//validateInput makes sure that the user is supplying only positive integers for their inputs
let validateInput = (value) => {
    let integer = Number.isInteger(parseFloat(value))
    let sign = Math.sign(value)

    if (integer && (sign === 1)) {
        return true;
    } else {
        return "Enter Whiskey Quantity";
        console.log(integer)
    }
}

// purchase function to prompt the customer for an item to purchase
let purchase = () => {
    inquirer.prompt([{
                type: "input",
                name: "product_name",
                message: "Please type the name of the whiskey you would like.",
                //validate: validateInput,
                //filter: Number
            },

            {
                type: "input",
                name: "stock_quantity",
                message: "How many bottles of this whiskey would you like?",
                //validate: validateInput,
                //filter: Number
            }
        ])
    //I think  below is where the bug still is.
        .then(function(purchase) {
                //.id or item_id -- currently a bug here
                let item = purchase.product_name
                let quantity = purchase.stock_quantity
                let queryStr = "SELECT * FROM whiskey WHERE ?";

                connection.query(queryStr, {
                        product_name: item
                    }, function (err, res) {
                        // if (err) throw err

                        // if (res.length === 0) {
                        //     console.log("ERROR: please enter number of bottles you would like.")
                        //     displayInventory()
                        // } else {

                        // set the results to the letiable of productInfo
                        let productInfo = res[0]

                        if (quantity <= productInfo.stock_quantity) {
                            console.log(productInfo.product_name + "Whoohoo! It is available, order it now!!!")


                            // the updating query string
                            let updateQS = "UPDATE whiskey SET stock_quantity = " + (productInfo.stock_quantity - quantity) + " WHERE product_name = " + item
                            // console.log('updateQS = ' + updateQS);

                            // Update the inventory
                            connection.query(updateQS, function (err, data) {
                                if (err) throw err;

                                console.log("Your Whiskey is on the way!!!");
                                console.log("total for your order is $" + productInfo.price * stock_quantity)
                                console.log("Forgot something?? input 'node bamazon_db.js' in command terminal.")


                                // connection.end function to end running db
                                connection.end();
                            })
                        } else {
                            console.log("Sorry, there is not enough " + productInfo.product_name + " in stock.")
                            console.log("Your order can not be placed as is.")
                            console.log("Please modify your order or select another item.")
                            

                            // After 3 seconds display the inventory again so that the customer can make a new selcetion.
                            setTimeout(function () {
                                displayInventory()
                            }, 2000)
                        
                    }
                })
        })}