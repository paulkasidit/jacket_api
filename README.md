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

## Authenticating with Doorkeeper and Devise 

1. There will be a dummy account provided when you seed your database. Pay attention! 

2. Use an API platform such as Postman, login with these params 

  e.g.  
  ```  
  { 
  grant_type: password,
  email: admin@admin.com, 
  password: adminadmin, 
  client_id: (see the next section on how to obtain it) <- uid,
  client_secret: (see the next section on how to obtain it) <- secret
  }
  ``` 

## Obtaining Secret and UID
After the database is seeded,

 Open rails console

  ``` 
   rails console
  ``` 

 run for uid 

  ``` 
   Doorkeeper::Application.find_by(name: "Admin").uid
  ``` 

 run for secret
   ``` 
   Doorkeeper::Application.find_by(name: "Admin").secret
  ``` 

4. POST -> this request with the above mentioned params. If it is successful, information about the token will be returned (expiry date, etc.). 

## Using the API 

1. Use an API platform such as Postman. 

2. GET -> route "{your local host}/jackets" 
   -> This will list all jackets in the database. Don't forget to seed your database first! 

2. POST -> route "{your local host}/jackets" 
  -> Refer to database schema for appropriate parameter headers to include in your post body. 

  e.g.  
  ```  
  { 
  jacket_brand: 'Monclat',
  jacket_manufacturer 'ABC Factory Co Ltd.', 
  jacket_category: 'bomber' 
  jacket_price: 19.99
  }
  ``` 
  

3. DELETE -> route "{your local host}/jackets/id"
   -> This can be obtained via listing all available jackets via the POST route, the ids will be under the "id" column. 

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
