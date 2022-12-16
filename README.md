#### Rails Jacket API
## By

* Kasidit Srisawat (Paul)

## Technologies Used

* Ruby 
* Rails 
* Active Record
* Devise 
* Doorkeeper

## Description

This website was built as a demonstration Jacket API for importing knock off jackets from abroad. 

## Setup/Installation Requirements

1. Clone the repo to your desired local directory with the below terminal command (you must already have git installed). Open a terminal in your preferred directory and run this command. 

```
$git clone https://github.com/paulkasidit/jacket_api
``` 
2. Open this folder in your VS Code. 
3. Run this command to install required gems
``` 
$bundle install
``` 
4. Run this command to migrate and seed both development and test databases 
``` 
$rake db:setup
```
5. Run this command to start the server, it will usually be hosted on http://localhost:3000/
``` 
$rails s 
```
6. Run tests for all scripts in the project's root directory with following terminal command
``` 
$rspec 
``` 

## Using the API 


| Method  | URL | Example | Result | Params |
| :--- |:---| :---| :---| :---|
|GET| `localhost:3000/` |`localhost:3000/jackets`| Returns a list of all jackets in the database| None required |
|GET|`localhost:3000/jackets/:id`| `localhost:3000/quotes/38`| Returns all information related to jacket with ID=1| :id - The id of a particular jacket (required) |
|POST|`http://localhost:3000/quotes/`|Adds jacket to database. If POST is succesfull, returns database object for newly created jacket.| { 
jacket_brand: 'example-jacket',
jacket_manufacturer 'example-factory', 
jacket_category: 'example-category' 
jacket_price: 19.99
} | 
|DELETE|`http://localhost:3000/quotes/:id`|`http://localhost:3000/jackets/1`|Deletes the jacket with ID=1 from database| :id - id of the jacket to delete |


## Known Bugs

* None

## License

Any inquiries or issues can be reported to _(kasiditpaul@gmail.com)

MIT License

Copyright (c) 2022 Kasidit Srisawat

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.