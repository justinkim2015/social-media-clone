# README

## Summary
###### Live: https://rails-book.onrender.com/users/

This project was written by Justin Kim in October of 2022 as part of theOdinProject curriculum. (https://www.theodinproject.com/lessons/ruby-on-rails-rails-final-project).

This application is a fully working social media site with user authentication handled by Devise and OAuth2.  Users can make posts, comment and like said posts, share pictures, and add friends.  By using Stimulus and Turboframes, users are able to post comments and like posts without requiring a page reload.  This data is then handled via ActiveRecord and saved to a PostgreSQL database.

## Technologies used:
- Ruby on Rails
- Stimulus
- Turboframes
- Bulma
- Devise
- S3 Amazon Web Services
- OmniAuth(Facebook)

## Video Demo

###### Log in and post
![login](https://user-images.githubusercontent.com/38001874/208804985-156cb9b9-436b-4cd9-ad8e-53cd10986ddd.gif)
###### Accept and reject friend requests
![friends](https://user-images.githubusercontent.com/38001874/208804996-42cd3168-55ae-4526-9597-0ddc8fd478e5.gif)
###### Comment and like
![commentandlike](https://user-images.githubusercontent.com/38001874/208805007-f0cb0264-856a-4bee-bf6b-a415d7bb21a4.gif)
###### Sending friend requests and viewing profile
![addingfriendsandprof](https://user-images.githubusercontent.com/38001874/208805012-50682a28-8bfc-4e66-9f71-accba67f034e.gif)

## Goal
Create a fully functioning social media site with comments, posts, likes, and friendships.  The main things I hoped to learn going into this project are as follows:
- Using new rails 7 features such as stimulus, turbolink, and turbostream.
- Creating a CRUD site with several tables and models all interlinked and planning out a scalable and reliable data framework.
- Learning to write both model and integration tests.
- Learn how to debug across environments(testing, development, production)

## Reflections
  This project was one of my favorites of the curriculum so far, I really enjoyed the freedom offered in what features to add or not.  I feel that there was many more things I could and wanted to add such as a sidebar and using turbostream/frames to emulate a single page application but for the sake of time and future projects I decided I would stop where I did.  

  My regret with this project is that I decided to use Bulma as a framework from the start instead of trying something new like Tailwind or even Bootstrap.  I could have used this as a learning opportunity to get familiar with another frontend framework but I decided to use the same one.  In my next app I think I'll try Tailwind to try a framework with a little more freedom to edit things and make the page exactly how I'd like it.  

  

