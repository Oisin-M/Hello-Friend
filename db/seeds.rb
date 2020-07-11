# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
   {email: "S.Murphy88@nuigalway.ie", password: "Password"},
   {email: "B.OSullivan18@nuigalway.ie", password: "Password"},
   {email: "O.Morrison1@nuigalway.ie", password: "Password"},
   {email: "B.ODonnell15@nuigalway.ie", password: "Password"},
   {email: "C.Kavanagh26@nuigalway.ie", password: "Password"}
  ])



Project.create([
  {account_id: 1, title: "CERN Webfest Hackathon", description: "Help us make a better future!"},
  {account_id: 2, title: "VisuPy", description: "Visualise Python Functions"},
  {account_id: 3, title: "Less Typing, More Thinking!", description: "Make a Latex database"},
  {account_id: 4, title: "CitiCERN", description: "Building cities for the future"},
  {account_id: 5, title: "DisCERN", description: "Join us and let's make something!"},
  {account_id: 3, title: "Hello, friend", description: "Bringing programmers together"},
])
