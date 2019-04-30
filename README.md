In my back end repo for this full stack project I used Ruby on Rails. I didn't
have many problems with making the back end, mostly because when a scaffold is
generated from the CLI rails does the work for you; adding macros relationsips
to the models, serializers, and controllers wasn't exactly a pain. I did have
an issue when I wanted to make my own custom route for finding nations created
by the current user. I was toying around so much with the ajax calls on the front
end when all I needed to do was make a custom route in the config folder
(get '/mynations' => 'nations#index_owned') and modify the nation controller
accordingly:
```
def index_owned
  @nations = current_user.nations.all

  render json: @nations
end
```
I was trying to pass a user url into the ajax calls and making over complicated
custom routes for the users when all I had to do was step back and try to
methodically think about what I was doing. I really like that about Rails: most
of the work is cut out for you. My stretch goals for this back end is to scaffold
more resources to make the app a more comprehensive and worthwhile travel log. I
already migrated a 'highlights' table to be given a one to many relationship
with nations. From there I want to add blog entries, surprises, highs and lows,
eating and lodging recommendations, etc.

https://awf825.github.io/passport-client/
https://radiant-sea-76414.herokuapp.com/
Front End Repo: https://github.com/awf825/passport-client
Wireframes and ERD: https://i.imgur.com/s1FZSNp.jpg?1
