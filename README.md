# Employee App

This is an application to manage the data for employees and it allows to import/export CSV the information.

You can check it out in: https://employee-app-emmanavarro.herokuapp.com/employees

## Requirements

- Ubuntu 18.04+
- Ruby 2.7+
- Rails 6+

## Installation & Init

1. Clone the repository: `git clone https://github.com/emmanavarro/employee_app.git`
2. Go to the folder: `cd employee_app`
3. Install requirements `bundle`
4. Create the data base `rails db:create`
5. Run the migrations `rails db:migrate`
6. Run the server: `rails s -b 0.0.0.0 -p 3000`

## Usage

Get into the URL `127.0.0.1:3000` to start the web app, create a new account and start writing.

## Features

### Download CSV file

 - This action will allow you download the information submitted in a single CSV file.

### Upload CSV file

 - This action will allow you to upload a CSV file with new information to update the registers.

#### Contact me

| Author | GitHub | Twitter | Linkedin |
| :---: | :---: | :---: | :---: |
| Emma Luisa Navarro | [emmanavarro](https://github.com/emmanavarro) | [@Ayy_Emma](https://twitter.com/Ayy_Emma) | [emmanavarromillan](https://www.linkedin.com/in/emmanavarromillan) |
