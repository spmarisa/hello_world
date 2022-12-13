# README

System dependencies:

* Ruby version - 3.1.1

* Rails version - 7.0.4

* Postgresql version - 12.10



# COMMANDS

rails new hello_world --api --database=postgresql

rails db:create --trace

rails db:migrate

rails generate controller Greetings hello
rails g controller api/v1/Users

rails generate model User username:string