gem install sinatra

to do:

get classes importing from products.rb
get form made
get form submission, and get data from form-fields

# where did it get installed?

* send the html views with sinatra routes
* but when they are sent, have them hidden
* and when they get to the browser, the js attatches the classes to make them fade in
* but what event lets JS know that they arrived ... just do a timeOut on the time that the button was clicked that went and fetched them?

Friendly Bakery

Goal:

To create a fullstack bakery website that displays information on cookies, cakes and muffins offered for sale as well as enables someone to receive a catalog of items sold via email.

Learning Objectives:

Upon successful completion of this project, the student will demonstrate their understanding of how to use API Wrappers in Ruby as well how to create a website using the Sinatra microframework.

Instructions:

Your friend is a baker who recently had a grand opening of their store. Unfortunately, the turnout was less than ideal and your friend suggested creating a website. The goal is to improve the store’s online presence and hopefully increase foot traffic to the store. Naturally, your friend turns to you for help and hands you some starting suggestions in a google document.

Client Suggestions:

I want it to look and feel like a bakery website
The front page should
provide information about the bakery
have links to pages where you can see
all cookies
all cakes
all muffins
Each item sold should have
a description
a price
There should be a way for a person on the site to receive an email with a catalog of all items sold
Examples (Inspiration):

https://bakedbyyael.myshopify.com/collections/cakepops (Links to an external site.)Links to an external site.
http://thecupcakeshopperaleigh.com/ (Links to an external site.)Links to an external site.
http://www.sugarlandchapelhill.com/ (Links to an external site.)Links to an external site.

Challenge:

In programming, in order to not repeat yourself, sometimes we have to store our data in a universal format that can be utilized in multiple areas. This is similar to how you would write recipe instructions down so in the future you can just use that as a template.

That all being said, try the following:

Create one class per generic category of item sold in the bakery
Cookie class
Cake class
Muffin class
Use these classes to create 1 object per item being sold (e.g if you have 3 cookies for sale you would create 3 Cookie objects based on one Cookie class)
Each item should have the following attributes
description
price

These objects represent digital versions of cookies, so now use these objects as data that you can utilize when displaying information about your cookies, cakes and muffins.

Try using these objects to

display information on price and description on the subcategory pages
generate the catalog email to send to the requesting user

Completion Requirements:

The completed assignment should:

fulfill the design needs of the user
it must look and feel like a bakery website
have a front page that links out to subcategory pages
have a page listing all cookies sold
have a page listing all muffins sold
have a page listing all cakes sold
use the Sendgrid API to send an email to the user’s email with a catalog of all items sold
API key should be stored in an environment variable
Rubric
Friendly Bakery Rubric
Friendly Bakery Rubric
Criteria Ratings Pts
This criterion is linked to a Learning Outcome Project fulfills the design needs of the user by looking and feeling like a bakery website.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
This criterion is linked to a Learning Outcome Project has a front page that links out to subcategory pages.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
This criterion is linked to a Learning Outcome Project has a page listing all cookies sold.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
This criterion is linked to a Learning Outcome Project has a page listing all muffins sold.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
This criterion is linked to a Learning Outcome Project has a page listing all cakes sold.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
This criterion is linked to a Learning Outcome Project uses the Sendgrid API to send an email to the user’s email with a catalog of all items sold. The API key is stored in an environment variable.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
This criterion is linked to a Learning Outcome Student presents completed project according to guidelines.
5.0 pts
Full Marks
0.0 pts
No Marks
5.0 pts
Total Points: 35.0
Previous Next

echo "export SENDGRID_API_KEY='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'" > sendgrid.env
echo "sendgrid.env" >> .gitignore
source ./sendgrid.env

email:

require 'sinatra'
require 'sendgrid-ruby'

include SendGrid

get '/' do  
 erb :index
end

post '/contact' do

@email = params[:email]
@opinion = params[:opinion]

from = Email.new(email: @email)
to = Email.new(email: 'allie.g.cooper@gmail.com')
subject = 'My Election Musings'
content = Content.new(type: 'text/plain', value: @opinion)
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api*key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail.*('send').post(request_body: mail.to_json)
if response.status_code == 401
error_hash = JSON.parse(response.body)
@errors = error_hash["errors"]
end
end

from site:

# using SendGrid's Ruby Library

# https://github.com/sendgrid/sendgrid-ruby

https://app.sendgrid.com/guide/integrate/langs/ruby

require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'test@example.com')
to = Email.new(email: 'test@example.com')
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api*key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail.*('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers

questions: where would we put a file that we want to write to?
how do we get the ENV variables to be accessible via

store your api key to your bash profile

get into bash profile: open ~/.bash_profile'

set source code #?
SOURCE ~/.bash_profile

maybe have to get it from regular terminal, not
export SENGRID_API_KEY = "apikey"

access it via ENV["SENGRID_API_KEY"]

in the terminal
echo $SENGRID_API_KEY
