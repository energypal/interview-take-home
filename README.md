# EnergyPal Full Stack Developer Candidate Interview Project

Thank you for taking the time to complete this exercise. We are excited that you are considering joining our amazing team.

This rails application is a basic skeleton of an app that allows customers to submit a solar project and get back quotes.

It already includes a few basic models:

1. Customer (bin/rails generate model Customer name:string email:string:uniq)
2. Project (bin/rails generate model Project customer:belongs_to country:string{2} system_size:integer)
3. Installer (bin/rails generate model Installer name:string active:boolean country:string{2} pricing:integer)
4. Quote (bin/rails generate model Quote project:belongs_to installer:belongs_to price:decimal{10,2})


## You need to accomplish the following tasks:

1. Create a React form for a user to submit their customer (name & email) and project information (country & system_size).

2. When a new project is created, create up to 3 quotes for the project from different installers. Match to installers by country
    and calculate the quote.price using the following logic:
    `6000 * Project.system_sizes[project.system_size] * Installer.pricings[installer.pricing] + rand(1...1000000) / 100.0`

3. After the form is correctly submitted, create a React page to list out the quotes and their details.

4. Create any RESTful APIs you may need and connect the frontend to the backend, for example: to capture the form information 
    into the correct models or retrieve a list of quotes. No authentication is necessary.

5. Apply form validation and styling to the pages as you see fit. TailwindCSS is preconfigured.

6. Add tests around the code as you deem appropriate.

7. You are welcome to add any code you think you need, as well as any Ruby gems or NPM packages as long as they are publicly available.

8. Answer the questions under the `Technical Questions` section below.


## Project Setup

This project is configured as a backend Rails application and a frontend NextJS application. These are two of our
favorite web frameworks.

First, clone this repo locally. The top-level directory contains the Rails app and the NextJS app is in the `frontend` directory.

### Requirements

* Ruby 2.7+
* Node 12.22.0+
* MacOS, Windows (including WSL), and Linux are supported

### Backend - API

To get setup, from the top-level directory run:

`bundle install`

`bin/rails db:setup`

To run the server: `bin/rails s`

Server will run on `http://localhost:3000`

### Frontend - Web App

To get setup, from the `frontend` directory run:

`npm install`

To run the server: `npm run dev`

Server will run on `http://localhost:3001`


## Technical Questions

Please answer the following questions in a markdown file called ANSWERS.md.

1. About how many hours did you contribute to this project?

2. If you had time to add more features or functions, what would you consider doing?

3. What libraries did you add if any? What are they used for?

4. Are there any limitations to your implementation? (ex: does not work in IE)


## Submitting your Project

Send us a zip file of the whole project for us to evaluate it. If you have questions while working on the project, don't hesitate to ask.


## References

To learn more about Ruby on Rails, take a look at the following resources:

- [Ruby on Rails Guides](https://guides.rubyonrails.org/v6.1/)
- [Ruby on Rails API Docs](https://api.rubyonrails.org/v6.1.4/)

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.