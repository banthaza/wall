# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

users = User.create([
                        {first_name:'Pascal', last_name:'bestel', email:'pascal@unionswiss.com', password:'1234'},
                    ])

countries = Country.create([
                               {iso_code:'ZA', name:'South Africa'},
                               {iso_code:'US', name:'United States'}
                           ])
