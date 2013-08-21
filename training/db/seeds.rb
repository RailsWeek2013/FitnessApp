puts "Seeding database..."
Exercise.create name: 'Situp' ,published:true
Exercise.create name: 'Bench Press',published:true
Exercise.create name: 'Klimmzüge',published:true
Exercise.create name: 'Chest Press',published:true

User.create email: "a@a.de", password: "12345678", password_confirmation: "12345678"
User.create email: "b@b.de", password: "12345678", password_confirmation: "12345678"
