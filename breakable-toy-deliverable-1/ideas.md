# Breakable Toy Ideas

#1 - User-Customizable Automotive Service Provider

This app would function similarly to Angie's List, but specifically for
gas station/DIY automotive service businesses. This was born out of me driving
around Boston for an hour one day looking for a self-service car wash/vacuum place.
There's no Yelp for something like that. The models would be set (e.g. Auto Parts,
Cleaning, Detailing, Gasoline/Diesel Fill-Ups) but the user would be able leave
comments and ratings for the individual facility (fulfilling the CRUD requirement).
I was also thinking about using Google Maps API to put the results up on a map.
I'd ideally like to do the API bit and comments sections with React so that they
will display on screening quickly when submitted.

#2 - Gluten Free Food Finder

This one is pure spitballing, but an interesting concept. My girlfriend has celiac
(sp?) disease. Everyone thinks it's the latest fad diet, but it's actually an auto-immune
disorder for some people. So while it's good that gluten-free stuff is becoming more
available, hers is such a sensitive case that she has to be very careful.

The idea is to have the user select a specific dish and be given menu items of that dish
from different restaurants in the selected area. The classes would be the different dishes,
and would "have_many" traits, in most cases concerns of the gluten-intolerant diner (food
prep practices, cross-contamination, ease of accommodation) and also a comments section.
For example, the user would select 'pizza' and be shown several pizza options from
menus of restaurants (which have individual profiles as well, I was thinking maybe just
a quick info thing using the hover event in JS) in the given radius and the options' traits.
Same thing for chicken wings, barbecue, even pasta!


#3 - Cribbage Game

This is one is a little ambitious, but static enough that it could work. Cribbage
is one of my favorite games of all time, taught to me at age 7 by my grandfather.
Here's a link to the Wikipedia page on cribbage: https://en.wikipedia.org/wiki/Cribbage

I admit, I'd need a push in the right direction as to where to begin, but I think
be a lot of fun to try. I would expect to use React in a lot of this, to have a section
on the page to represent the hand, the count, the crib, and the board of play
(although in truth, the score could be represented by a counter and not a graphic).
Some places where I could get a little fancy would be the styling of the game, and also
a high score system to tie in with the back-end Rails framework.
