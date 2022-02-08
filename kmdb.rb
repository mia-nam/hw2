# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model
# TODO!

value =  { name: "Christopher Nolan" }
person1 = Person.new(value)
person1.save


value = { title: "Batman Begins",
            year_released: 2005,
            rated: "PG-13",
            person_id: person1.id
        }
movie1 = Movie.new(value)
movie1.save

value = { title: "The Dark Knight",
            year_released: 2008,
            rated: "PG-13",
            person_id: person1.id
        }
movie2 = Movie.new(value)
movie2.save

value = { title: "The Dark Knight Rises",
            year_released: 2012,
            rated: "PG-13",
            person_id: person1.id
        }
movie3 = Movie.new(value)
movie3.save



##batman begins

value =  { name: "Christian Bale"}
person2 = Person.new(value)
person2.save

value =  { name: "Michael Caine"}
person3 = Person.new(value)
person3.save

value =  { name: "Liam Neeson"}
person4 = Person.new(value)
person4.save

value =  { name: "Katie Holmes"}
person5 = Person.new(value)
person5.save

value =  { name: "Gary Oldman"}
person6 = Person.new(value)
person6.save

value = { movie_id: movie1.id,
            person_id: person2.id,
            character_name: "Bruce Wayne"
        }

role1 = Role.new(value)
role1.save

value = { movie_id: movie1.id,
            person_id: person3.id,
            character_name: "Alfred"
        }

role2 = Role.new(value)
role2.save

value = { movie_id: movie1.id,
            person_id: person4.id,
            character_name: "Ra's Al Ghul"
        }

role3 = Role.new(value)
role3.save


value = { movie_id: movie1.id,
            person_id: person5.id,
            character_name: "Rachel Dawes"
        }

role4 = Role.new(value)
role4.save


value = { movie_id: movie1.id,
            person_id: person6.id,
            character_name: "Commissioner Gordon"
        }

role5 = Role.new(value)
role5.save

##The Dark Night

value =  { name: "Heath Ledger"}
person7 = Person.new(value)
person7.save

value =  { name: "Aaron Eckhart"}
person8 = Person.new(value)
person8.save

value =  { name: "Maggie Gyllenhaal"}
person9 = Person.new(value)
person9.save


value = { movie_id: movie2.id,
            person_id: person2.id,
            character_name: "Bruce Wayne"
        }

role6 = Role.new(value)
role6.save

value = { movie_id: movie2.id,
            person_id: person7.id,
            character_name: "Joker"
        }

role7 = Role.new(value)
role7.save

value = { movie_id: movie2.id,
            person_id: person8.id,
            character_name: "Harvey Dent"
        }

role8 = Role.new(value)
role8.save

value = { movie_id: movie2.id,
            person_id: person3.id,
            character_name: "Alfred"
        }

role9 = Role.new(value)
role9.save

value = { movie_id: movie2.id,
            person_id: person9.id,
            character_name: "Rachel Dawes"
        }

role10 = Role.new(value)
role10.save


## The Dark Knight Rises
value =  { name: "Tom Hardy"}
person10 = Person.new(value)
person10.save

value =  { name: "Joseph Gordon-Levitt"}
person11 = Person.new(value)
person11.save

value =  { name: "Anne Hathaway"}
person12 = Person.new(value)
person12.save

value = { movie_id: movie3.id,
            person_id: person2.id,
            character_name: "Bruce Wayne"
        }

role11 = Role.new(value)
role11.save

value = { movie_id: movie3.id,
            person_id: person6.id,
            character_name: "Commissioner Gordon"
        }

role12 = Role.new(value)
role12.save

value = { movie_id: movie3.id,
            person_id: person10.id,
            character_name: "Bane"
        }

role13 = Role.new(value)
role13.save

value = { movie_id: movie3.id,
            person_id: person11.id,
            character_name: "John Blake"
        }

role14 = Role.new(value)
role14.save

value = { movie_id: movie3.id,
            person_id: person12.id,
            character_name: "Selina Kyle"
        }

role15 = Role.new(value)
role15.save

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

movies = Movie.all
for x in movies
    chris = Person.where({id: x.person_id})[0]
    puts "#{x.title} #{x.year_released} #{x.rated} #{chris.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
roles = Role.all
for x in roles
    movie = Movie.where({id: x.movie_id}) [0]
    person = Person.where({id: x.person_id}) [0]
    puts "#{movie.title} #{person.name} #{x.character_name}"
end

