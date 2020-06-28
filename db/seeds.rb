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
  {account_id: 1, title: "CERN Webfest Hackathon", description: "Help us make a better future!", skills: "HTML", category: "Hackathon"},
  {account_id: 2, title: "{ Hello, Friend! }", description: "Oh my god we need help please!", skills: "Ruby", category: "Crisis"},
  {account_id: 3, title: "Machine Learning and You!", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod ex ac leo tempus scelerisque. Proin accumsan blandit metus scelerisque ultrices. Etiam consectetur dolor sit amet ante rhoncus semper. Donec ultrices at ipsum id posuere. Phasellus pharetra sem eros, sit amet tristique ligula mollis in. Pellentesque condimentum, ligula ac dignissim suscipit, ligula leo lobortis turpis, in posuere nibh erat at nulla. Suspendisse quis tortor in risus imperdiet convallis ac ut sapien. Etiam metus sem, elementum eget pellentesque id, mattis at dui. Fusce dictum egestas elit. Nam lacinia nisl et lacinia egestas. Cras consectetur ex vestibulum ultrices venenatis. Vivamus sagittis quis nunc vitae ultricies. ", skills: "Python, Keras", category: "Machine Learning"},
  {account_id: 4, title: "Less typing, more thinking!", description: "During my undergraduate degree, I have spent countless hours compiling TeX files and writing equations using the Latex syntax. And I would have much rather spent this time thinking about the scientific meaning behind those symbols, rather than how to display them properly.

I believe that having a database with physics equations written in LaTeX will enable me and many other students, teachers and researchers to focus on the important things. An extensive, well-maintained, and open to all bank of equations will be invaluable when writing articles, journals, lecture notes, or presentations.

This project will be useful not only in the current circumstances when experimental work is on hold, and researchers have focused more on articles and presentations, but also in the years to come when online will be the new normal.", skills: "TeX, LaTeX, Python, Flask", category: "Facilitating Research"},
  {account_id: 5, title: "VisuPy", description: "Have you ever opened up code that you wrote 6 months ago and wonder what in the world is going on? We have! We are committed to building a tool that allows easy visualization of how data is created and used in code for common objects. Visualizing how data is selected from arrays and objects and how it is propagated through functions is a key to understanding how programs new and old work and will greatly decrease the amount of time needed to understand exactly what is being done on your machine!", skills: "Python, JS", category: "Data Visualisation"},
  ])
