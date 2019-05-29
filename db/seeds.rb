# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name:'Jonnel', last_name:'Benjamin', email:'jonnel.benjamin@gmail.com', password_digest:'jonnel')

Entry.create(description: 'foaifoair', date_and_time: '5-13-2019 ', user_id: 1)
Entry.create(description: 'dear diary, i want this app built', date_and_time: '4-13-2019 ', user_id: 1)
Entry.create(description: 'jesus loves you', date_and_time: '5-16-2019 ', user_id: 1)
Entry.create(description: 'when you walk into the room', date_and_time: '3-13-2019 ', user_id: 1)