# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("TRUNCATE users, plans, exercises, days, user_plans, user_days RESTART IDENTITY CASCADE")

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
  description: "Run for 1 minute, walk for 1 minute. Repeat until you reach 2 miles. Sholud take around 20 minutes.",
  miles: 2
  },{
  name: "Run/Walk: 3 mi",
  description: "Run for 2 minutes, walk for 4 minutes. Repeat until you reach 3 miles. Sholud take around 30 minutes",
  miles: 3
  },{
  name: "Run/Walk: 3",
  description: "Run for 3 minutes, walk for 3 minutes. Repeat until you reach 3 miles. Sholud take around 25 minutes",
  miles: 3
  },{
  name: "Run/Walk: 3",
  description: "Run for 5 minutes, walk for 3 minutes. Repeat until you reach 3 miles. Sholud take around 25 minutes",
  miles: 3
  },{
  name: "Run/Walk: 2.4",
  description: "Run for 7 minutes, walk for 2 minutes. Repeat until you reach 2.4 miles. Sholud take around 27 minutes",
  miles: 2.4
  },{
  name: "Run/Walk: 2.7",
  description: "Run for 8 minutes, walk for 2 minutes. Repeat until you reach 2.7 miles. Sholud take around 27 minutes",
  miles: 2.7
  },{
  name: "Run/Walk: 2.7",
  description: "Run for 10 minutes, walk for 2 minutes. Do this twice, then run for a further 5 mins Sholud take around 29 minutes",
  miles: 2.7
  },{
  name: "Run/Walk: 2.85",
  description: "Run for 9 minutes, walk for 1 minute. Repeat untill you reach 2.85 miles. Sholud take around 30 minutes",
  miles: 2.85
  },{
  name: "Run/Walk: 3",
  description: "Run for 12 minutes, walk for 2 minutes. Do this twice, then run for a further 5 mins Sholud take around 33 minutes",
  miles: 3
  },{
  name: "Run/Walk: 3.1",
  description: "Run for 15 minutes, walk for 1 minute. Repeat untill you reach 3.1 miles. Sholud take around 32 minutes",
  miles: 3.1
  },{
  name: "Race: 5km",
  description: "You will probably find that you can run at least 20 minutes before you need a break, but whatever your plan, start slowly, and don’t wait until you are exhausted before taking some one-minute walk breaks.",
  miles: 3.1
  },{
  name: "Run: 2.5",
  description: "Run for 20-25 mins at an easy pace untill you reach 2.5 miles",
  miles: 2.5
  },{
  name: "Run: 3.5",
  description: "10 mins easy, then 4 x 1 min brisk with 2-min jog recoveries, then 10 mins easy",
  miles: 3.5
  },{
  name: "Run: 2.3",
  description: "20 mins easy",
  miles: 2.3
  },{
  name: "Run: 3.5",
  description: "30 mins easy",
  miles: 3.5
  },{
  name: "Run: 4.4",
  description: "10 mins easy, then 4-5 x 90 secs brisk with 2.5-min jog recoveries, then 10 mins easy",
  miles: 4.4
  },{
  name: "Run: 3.9",
  description: "35 mins easy",
  miles: 3.9
  },{
  name: "Run: 3.2",
  description: "25 - 30 mins easy",
  miles: 3.2
  },{
  name: "Run: 3.3",
  description: "10 mins easy, then 20 mins fartlek (free-form fast and slow running)",
  miles: 3.3
  },{
  name: "Run: 2.9",
  description: "25 mins easy",
  miles: 2.9
  },{
  name: "Run: 4.5",
  description: "40 mins easy",
  miles: 4.6
  },{
  name: "Run: 3.2",
  description: "10 mins easy, then stretch, then 1 measured mile, timed, fast, then 10 mins easy",
  miles: 3.2
  },{
  name: "Run: 4.4",
  description: "10 mins easy, then 20 mins fartlek, then 10 mins easy",
  miles: 4.4
  },{
  name: "Run: 5.2",
  description: "45 mins easy",
  miles: 5.2
  },{
  name: "Run: 3.9",
  description: "10 mins easy, then 3 x 3 mins brisk with 3-min jog recoveries, then 10 mins easy",
  miles: 3.9
  },{
  name: "Run: 1.7",
  description: "15 mins easy",
  miles: 1.7
  }])

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

  { position: 15, week: 3, plan_id: 1 },
  { position: 16, week: 3, exercise_id: 5, plan_id: 1 },
  { position: 17, week: 3, plan_id: 1 },
  { position: 18, week: 3, exercise_id: 6, plan_id: 1 },
  { position: 19, week: 3, plan_id: 1 },
  { position: 20, week: 3, exercise_id: 6, plan_id: 1 },
  { position: 21, week: 3, plan_id: 1 },

  { position: 22, week: 4, plan_id: 1 },
  { position: 23, week: 4, exercise_id: 6, plan_id: 1 },
  { position: 24, week: 4, plan_id: 1 },
  { position: 25, week: 4, exercise_id: 7, plan_id: 1 },
  { position: 26, week: 4, plan_id: 1 },
  { position: 27, week: 4, exercise_id: 6, plan_id: 1 },
  { position: 28, week: 4, plan_id: 1 },

  { position: 29, week: 5, plan_id: 1 },
  { position: 30, week: 5, exercise_id: 8, plan_id: 1 },
  { position: 31, week: 5, plan_id: 1 },
  { position: 32, week: 5, exercise_id: 9, plan_id: 1 },
  { position: 33, week: 5, plan_id: 1 },
  { position: 34, week: 5, exercise_id: 6, plan_id: 1 },
  { position: 35, week: 5, plan_id: 1 },

  { position: 36, week: 6, plan_id: 1 },
  { position: 37, week: 6, exercise_id: 10, plan_id: 1 },
  { position: 38, week: 6, plan_id: 1 },
  { position: 39, week: 6, exercise_id: 6, plan_id: 1 },
  { position: 40, week: 6, plan_id: 1 },
  { position: 41, week: 6, plan_id: 1 },
  { position: 42, week: 6, exercise_id: 11, plan_id: 1 },

  { position: 1, week: 1, plan_id: 2 },
  { position: 2, week: 1, exercise_id: 12, plan_id: 2 },
  { position: 3, week: 1, plan_id: 2 },
  { position: 4, week: 1, exercise_id: 13, plan_id: 2 },
  { position: 5, week: 1, plan_id: 2 },
  { position: 6, week: 1, exercise_id: 14, plan_id: 2 },
  { position: 7, week: 1, exercise_id: 15, plan_id: 2 },

  { position: 8, week: 2, plan_id: 2 },
  { position: 9, week: 2, exercise_id: 12, plan_id: 2 },
  { position: 10, week: 2, plan_id: 2 },
  { position: 11, week: 2, exercise_id: 15, plan_id: 2 },
  { position: 12, week: 2, plan_id: 2 },
  { position: 13, week: 2, exercise_id: 13, plan_id: 2 },
  { position: 14, week: 2, exercise_id: 16, plan_id: 2 },

  { position: 15, week: 3, plan_id: 2 },
  { position: 16, week: 3, exercise_id: 17, plan_id: 2 },
  { position: 17, week: 3, plan_id: 2 },
  { position: 18, week: 3, exercise_id: 18, plan_id: 2 },
  { position: 19, week: 3, plan_id: 2 },
  { position: 20, week: 3, exercise_id: 19, plan_id: 2 },
  { position: 21, week: 3, exercise_id: 20, plan_id: 2 },

  { position: 22, week: 4, plan_id: 2 },
  { position: 23, week: 4, exercise_id: 21, plan_id: 2 },
  { position: 24, week: 4, plan_id: 2 },
  { position: 25, week: 4, exercise_id: 22, plan_id: 2 },
  { position: 26, week: 4, plan_id: 2 },
  { position: 27, week: 4, exercise_id: 13, plan_id: 2 },
  { position: 28, week: 4, exercise_id: 23, plan_id: 2 },

  { position: 29, week: 5, plan_id: 2 },
  { position: 30, week: 5, exercise_id: 17, plan_id: 2 },
  { position: 31, week: 5, plan_id: 2 },
  { position: 32, week: 5, exercise_id: 24, plan_id: 2 },
  { position: 33, week: 5, plan_id: 2 },
  { position: 34, week: 5, exercise_id: 19, plan_id: 2 },
  { position: 35, week: 5, exercise_id: 16, plan_id: 2 },

  { position: 36, week: 6, plan_id: 2 },
  { position: 37, week: 6, exercise_id: 19, plan_id: 2 },
  { position: 38, week: 6, plan_id: 2 },
  { position: 39, week: 6, exercise_id: 19, plan_id: 2 },
  { position: 40, week: 6, plan_id: 2 },
  { position: 41, week: 6, exercise_id: 25, plan_id: 2 },
  { position: 42, week: 6, exercise_id: 11, plan_id: 2 }
  ])
