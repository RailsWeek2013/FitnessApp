puts "Seeding database..."
Exercise.create name: 'Situp', muskelgruppe: 'Brust',published:true
Exercise.create name: 'Bench Press',muskelgruppe: 'Brust' , published:true
Exercise.create name: 'Klimmzüge',muskelgruppe: 'Brust', published:true
Exercise.create name: 'Chest Press',muskelgruppe: 'Brust' , published:true

User.create email: "a@a.de", password: "12345678", password_confirmation: "12345678"
User.create email: "b@b.de", password: "12345678", password_confirmation: "12345678"
