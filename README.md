# Microverse Project Title - Getting Your Feet Wet [Collaborative Project]
Ruby on Rails

## Introduction.
This project is the first approach at using the Ruby on Rails framework. Following instructions from The Ruby on Rails tutorial, you will build a simple application that allows to create users and edit their information as well as create posts and edit them.

## Microverse Adjustments
1. Skip the entire “Blogger Tutorial” in the point 2 of the assignments.

2. Skip section 1.4 “Version control with Git” in “the Rails Tutorial” in the point 2 of the assignments (but read the rest of the Chapter 1 Rails Tutorial).

3. Skip point 3 of the assignments.

* Ruby version
rbenv 2.6.5

* System dependencies
Rails 6.0.0
Yarn 1.19.1
Ubuntu 18.04 & below

* Configuration

* Database creation

* Database initialization

* How to run the test suite
1. Create new users
2. Create new microsposts entry

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
1. Open the terminal.
2. Enter git clone https://github.com/jcromerohdz/toy_app
3. Navigate to the cloned repository.
4. Enter command "rails server" to start the app

* ...

## Instructions

1. Read and follow along with [Chapter 2 of The Rails Tutorial by Michael Hartl](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/toy_app), where you will create a very basic Ruby on Rails application. Michael takes steps to standardize the development process by partnering with Cloud 9, but if you’ve done the installations listed above, you should be good to go on your own machine. Michael also favors bitbucket over GitHub because bitbucket has free private repos. However, GitHub recently announced that they now also offer free private repos. If you choose to make your repositories private, keep in mind that your solution will not be able to be viewed by others.

## Odin Project Exercises

1.1. (For readers who know CSS) Create a new user, then use your browser’s HTML inspector to determine the CSS id for the text “User was successfully created.” What happens when you refresh your browser?
CSS ID = "Notice". The notice disappears

1.2 What happens if you try to create a user with a name but no email address?
Creation will be successful without email adddress input

1.3 What happens if you try create a user with an invalid email address, like “@example.com”?
Creation will be successfully regardless of input

1.4 Destroy each of the users created in the previous exercises. Does Rails display a message by default when a user is destroyed?
Yes


2.1 By referring to Figure 2.11, write out the analogous steps for visiting the URL /users/1/edit.
a .The browser issues a request for the /users/1/edit URL after click edit on the first name

b. Rails routes /users/1 to the index action in the Users controller.

c. The index action asks the User model to retrieve user (@user).

d. The User model pulls all the users from the database.

e. The User model returns the one user to the controller.

f. The controller captures the user in the @user variable, which is passed to the index view.

g. The view uses embedded Ruby to render the page as HTML.

h. The controller passes the HTML back to the browser.

2.2 Find the line in the scaffolding code that retrieves the user from the database in the previous exercise. Hint: It’s in a special location called set_user.
def set_user
  @user = User.find(params[:id])
end


2.3 What is the name of the view file for the user edit page?
edit.html.erb

3.1. For readers who know CSS) Create a new micropost, then use your browser’s HTML inspector to determine the CSS id for the text “Micropost was successfully created.” What happens when you refresh your browser?
a. the notice selector will disapear

3.2. Try to create a micropost with empty content and no user id.
a. The micropost will succesfully created

3.3. Try to create a micropost with over 140 characters of content (say, the first paragraph from the Wikipedia article on Ruby).

a. The micropos will successfully created with the text content

3.4. Destroy the microposts from the previous exercises.

3.5. Try to create a micropost with the same long content used in a previous exercise (Section 2.3.1.1). How has the behavior changed?
a. The application answer with an error massege "Content is too long (maximum is 140 characters)"

3.6 (For readers who know CSS) Use your browser’s HTML inspector to determine the CSS id of the error message produced by the previous exercise.
a. the id error_explenation is render when the error ocurrs


3.7. Edit the user show page to display the content of the user’s first micropost. (Use your technical sophistication (Box 1.2) to guess the syntax based on the other content in the file.) Confirm by visiting /users/1 that it worked.
a. Edit the user show page with adding this code <%= @user.microposts.first.content %>

3.8. The code in Listing 2.18 shows how to add a validation for the presence of micropost content in order to ensure that microposts can’t be blank. Verify that you get the behavior shown in Figure 2.17.
a. by adding this to the micropost.rb file "presence: true" code it will give us the behavior of not put blank content on it

3.9. Update Listing 2.19 by replacing FILL_IN with the appropriate code to validate the presence of name and email attributes in the User model (Figure 2.18).
a. by adding this to the user.rb file  validates :name, length: { maximum: 40 } , presence: true
validates :email, length: { maximum: 45 }, presence: true code it will give us the behavior of not put empty content on it

3.10. By examining the contents of the Application controller file, find the line that causes ApplicationController to inherit from ActionController::Base.
a. We can find this line in application_controller.rb

3.11. Is there an analogous file containing a line where ApplicationRecord inherits from ActiveRecord::Base? Hint: It would probably be a file called something like application_record.rb in the app/models directory.
a. yes it is in the application_record.rb file within the models folder

## Source
https://www.theodinproject.com/courses/ruby-on-rails/lessons/getting-your-feet-wet.

#Github Repo
https://github.com/geraldgsh/tic-tac-toe/

## Contributor
[Gerald Goh](https://github.com/geraldgsh)
[Christian Romero](https://github.com/jcromerohdz)