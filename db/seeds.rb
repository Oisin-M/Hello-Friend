# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
   {first_name: "Scott", last_name: "Murphy", username: "pumpkineaters", email: "S.Murphy88@nuigalway.ie", interests: "supermacs", skills: "hacking", password: "Password"},
   {first_name: "Brian", last_name: "O'Sullivan", username: "BigBigBrian", email: "B.OSullivan18@nuigalway.ie", interests: "mcdonalds", skills: "hacking", password: "Password"},
   {first_name: "Oisin", last_name: "Morrison", username: "Koff", email: "O.Morrison1@nuigalway.ie", interests: "moms cooking", skills: "chess", password: "Password"},
   {first_name: "Barry", last_name: "O'Donnell", username: "BluBarry", email: "B.ODonnell15@nuigalway.ie", interests: "moms cooking", skills: "overwatch", password: "Password"},
   {first_name: "Cormac", last_name: "Kavanagh", username: "CKnight", email: "C.Kavanagh26@nuigalway.ie", interests: "supermacs", skills: "hacking", password: "Password"}
  ])

Project.create([
  {account_id: 1, title: "Project 1", description: "A sample project by Scott", skills: "HTML", category: "Voluntary Computing"},
  {account_id: 2, title: "Project 2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod ex ac leo tempus scelerisque. Proin accumsan blandit metus scelerisque ultrices. Etiam consectetur dolor sit amet ante rhoncus semper. Donec ultrices at ipsum id posuere. Phasellus pharetra sem eros, sit amet tristique ligula mollis in. Pellentesque condimentum, ligula ac dignissim suscipit, ligula leo lobortis turpis, in posuere nibh erat at nulla. Suspendisse quis tortor in risus imperdiet convallis ac ut sapien. Etiam metus sem, elementum eget pellentesque id, mattis at dui. Fusce dictum egestas elit. Nam lacinia nisl et lacinia egestas. Cras consectetur ex vestibulum ultrices venenatis. Vivamus sagittis quis nunc vitae ultricies. ", skills: "Ruby", category: "Voluntary Computing"},
  {account_id: 3, title: "Project 3", description: "A sample project by Oisin", skills: "JS", category: "Voluntary Computing"},
  {account_id: 4, title: "Project 4", description: "A sample project by Barry", skills: "CSS", category: "Voluntary Computing"},
  {account_id: 5, title: "Project 5", description: "A sample project by Cormac", skills: "Bootstrap", category: "Voluntary Computing"},
  ])
