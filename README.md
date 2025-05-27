# 📘 Blog App (Rails 8 + ESBuild)

A simple blog application built with **Ruby on Rails 8** and **ESBuild**. Users can create blog posts with an author's name and email. Each blog post can receive feedback, which is emailed to the blog post's author.

---

## 🚀 Features

- Create, view, and manage blog posts
- Submit feedback for each blog post
- Automatically send feedback to the author's email
- RSpec test suite for models, and mailers

---

## 🧰 Tech Stack

- Ruby 3.x
- Ruby on Rails 8
- MySQL
- ESBuild (JavaScript bundler)
- Turbo/Hotwire (optional)
- RSpec for testing

---

## 🛠️ Getting Started

### 1. Clone the repository

git clone https://github.com/your-username/blog_app.git
cd blog_app

### 2. Install dependencies
bundle install

### 3. Set up the database
rails db:create
rails db:migrate

### 4. Seed the database with sample data
rails db:seed

### 5. Install JavaScript dependencies
yarn install


## ✉️ Email Configuration (Development)
To enable feedback emails, configure SMTP settings in config/environments/development.rb.

  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              ENV["SMTP_ADDRESS"],
    port:                 587,
    user_name:            ENV["SMTP_USERNAME"],
    password:             ENV["SMTP_PASSWORD"],
    authentication:       "plain",
    enable_starttls_auto: true
  }


## ✅ Running the App

bin/dev

## 🧪 Running Tests

Run all tests:
bundle exec rspec
