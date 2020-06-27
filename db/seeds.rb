# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
   {first_name: "Scott", last_name: "Murphy", username: "pumpkineaters", email: "S.Murphy88@nuigalway.ie", interests: "The Beach", skills: "Hacking", password: "Password"},
   {first_name: "Brian", last_name: "O'Sullivan", username: "BigBigBrian", email: "B.OSullivan18@nuigalway.ie", interests: "Being On A Nice One", skills: "None", password: "Password"},
   {first_name: "Oisin", last_name: "Morrison", username: "Koff", email: "O.Morrison1@nuigalway.ie", interests: "Hurling", skills: "I Actually Know What I'm Doing", password: "Password"},
   {first_name: "Barry", last_name: "O'Donnell", username: "BluBarry", email: "B.ODonnell15@nuigalway.ie", interests: "Physics", skills: "The Cat In The Hat", password: "Password"},
   {first_name: "Cormac", last_name: "Kavanagh", username: "CKnight", email: "C.Kavanagh26@nuigalway.ie", interests: "Tea", skills: "Auditoring", password: "Password"}
  ])

Project.create([
  {account_id: 1, description: "A sample project by Scott", skills: "HTML", category: "Voluntary Computing"},
  {account_id: 2, description: "A sample project by Brian", skills: "Ruby", category: "Voluntary Computing"},
  {account_id: 3, description: "A sample project by Oisin", skills: "JS", category: "Voluntary Computing"},
  {account_id: 4, description: "A sample project by Barry", skills: "CSS", category: "Voluntary Computing"},
  {account_id: 5, description: "A sample project by Cormac", skills: "Bootstrap", category: "Voluntary Computing"},
  ])
