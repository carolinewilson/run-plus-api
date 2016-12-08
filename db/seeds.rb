# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("TRUNCATE users, plans, exercises, days RESTART IDENTITY CASCADE")

User.create!([{
    username: "carolinewilson",
    email: "test@test.com",
    password: "password",
    password_confirmation: "password"
  }])

Plan.create!([{
    level: "Couch to 5km",
    length: "5km"
  },{
    level: "Current Runner",
    length: "5km"
  },{
    level: "Advanced Runner",
    length: "5km"
  },{
    level: "Couch to 10km",
    length: "10km"
  },{
    level: "Current Runner",
    length: "10km"
  },{
    level: "Advanced Runner",
    length: "10km"
  },{
    level: "Couch to Half Marathon",
    length: "Half Marathon"
  },{
    level: "Current Runner",
    length: "Half Marathon"
  },{
    level: "Advanced Runner",
    length: "Half Marathon"
  }])

Exercise.create!([{
  name: "Run/Walk: 2 mi",
  description: "Run for 1 minute, walk for 1 minute. Repeat until you reach 2 miles. Sholud take around 20 minutes."
  },{
  name: "Run/Walk: 3 mi",
  description: "Run for 2 minutes, walk for 4 minutes. Repeat until you reach 3 miles. Sholud take around 30 minutes"},{
  name: "Run/Walk: 3",
  description: "Run for 3 minutes, walk for 3 minutes. Repeat until you reach 3 miles. Sholud take around 25 minutes"},{
  name: "Run/Walk: 3",
  description: "Run for 5 minutes, walk for 3 minutes. Repeat until you reach 3 miles. Sholud take around 25 minutes"}])

Day.create!([
  { position: 1, week: 1, plan_id: 1 },
  { position: 2, week: 1, exercise_id: 1, plan_id: 1 },
  { position: 3, week: 1, plan_id: 1 },
  { position: 4, week: 1, exercise_id: 2, plan_id: 1 },
  { position: 5, week: 1, plan_id: 1 },
  { position: 6, week: 1, plan_id: 1 },
  { position: 7, week: 1, exercise_id: 2, plan_id: 1 },
  { position: 8, week: 2, plan_id: 1 },
  { position: 9, week: 2, exercise_id: 3, plan_id: 1 },
  { position: 10, week: 2, plan_id: 1 },
  { position: 11, week: 2, exercise_id: 3, plan_id: 1 },
  { position: 12, week: 2, plan_id: 1 },
  { position: 13, week: 2, plan_id: 1 },
  { position: 14, week: 2, exercise_id: 4, plan_id: 1 },
  ])
