<h1 align="center">Welcome to Simple Rails API 👋</h1>

> A Ruby on Rails implementation regarding an authenticated POST request

## Author

👤 **Nikos Chatzinikolaou**

* Github: [@nikoschatz](https://github.com/nikoschatz)

## Tools and Dependencies
- Ruby v3.0.3
- Rails v7.0.0
- SQLite v3.31.1
- Atom text editor
- Postman for testing 

The Knock Gem was used for authentication purposes


## Running the Program
To run the program you should follow the steps below:

- Clone the project on your local environment (you should have installed the tools mentioned above)
- Run 'rake create_user["email","password"]' providing your desired email and password. You will be provided with a Json Web Token
- This token can then be used on the Header of the POST Request, with key "Authorization", to send a delivery payload to `localhost:3000/deliveries`

Json payload example:

{
    "title": "Delivery Name",
    "price": "12.00",
    "pickup_location": "Address, Athens, Greece",
    "delivery_location": "Address, Moss, Norway",
    "size": 1,
    "currency": "EUR",
    "country_code": "GR"
}

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
