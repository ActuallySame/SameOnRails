# Same 2.0 built on Ruby on Rails.

Title: actuallyspam.
Team Members: Eric Hou, Naman Priyadarshi, Kanaad Parvate
Demo Link: actuallysame.herokuapp.com

Idea: An application where users can force their friends to see their 
pictures, memes or other types of spam by subscribing them to their 
account. Where you see a bug, we see a feature. 

Models and Description:
User
has username, email, and many spams
Same (It’s supposed to be Spams. Naman spelled spam wrong. Classic 
Naman. We also changed our idea after writing a ton of code and it was 
too complicated to fix it.)
has image and belongs to a User
Following
has two User name ids, id_a is the one that is forcing id_b to see his 
photos

Features:
Users can sign up, log in, and log out 
Users can view their own spams and the people they are subscribed to
Users add spams to their page
Users can subscribe their friends to their page

Division of Labor:
Eric: Made Following model, made pictures show on website, and made 
styling to site
Naman: Added Paperclip and Devise gem and add spam form
Kanaad: Assisted in Following model, made pictures appear on website, 
and went through bug fixes
