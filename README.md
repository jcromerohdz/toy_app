# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Exercises

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



__________________________________

1. For readers who know CSS) Create a new micropost, then use your browser’s HTML inspector to determine the CSS id for the text “Micropost was successfully created.” What happens when you refresh your browser?
a. the notice selector will disapear

2. Try to create a micropost with empty content and no user id.
a. The micropost will succesfully created

3. Try to create a micropost with over 140 characters of content (say, the first paragraph from the Wikipedia article on Ruby).

a. The micropos will successfully created with the text content

4. Destroy the microposts from the previous exercises.

