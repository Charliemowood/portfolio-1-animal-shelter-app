#this is a script to run animal_shelter app on your environment
# to run file use the command build-and-run.rb

# needs to be run in top level of project directory
system('psql -d animal_shelter -f db/animal_shelter.sql')
system('ruby db/seeds.rb')
system('ruby app.rb')

# visit the address of the app at the following url: localhost:4567
