# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.delete_all
Doctor.delete_all
Facility.delete_all
Ailment.delete_all
Administrator.delete_all


ailments = [
    {name: "disturbed", aggression_level: "Moderate"},
    {name: "smoking", aggression_level: "Moderate"},
    {name: "amnesia", aggression_level: "Low"},
    {name: "hallucinogenic", aggression_level: "High"}
]

ailments.each {| ailment | Ailment.create(ailment)}

administrators = [
    {name: "Alberto Easker", user_name: "t_virus1996", password: "ChrisBluefield", status: "healthy" },
    {name: "John Conebush", user_name: "jcone129", password: "IWishIWasLonetree", status: "healthy" },
    {name: "Payton Blue", user_name: "payblue77", password: "WhyWasINotNamedGray", status: "healthy" }
]

administrators.each {| administrator | Administrator.create(administrator)}

facilities = [
    {name: "Restful Springs", location: "Colorado Springs, CO", status: "safe", administrator_id: Administrator.first.id },
    {name: "Salt Lake Restoration", location: "Salt Lake City, UT", status: "safe", administrator_id: Administrator.last.id },
    {name: "Illumination Chicago", location: "Chicago, IL", status: "safe", administrator_id: Administrator.second.id }
]

facilities.each {| facility | Facility.create(facility)}

doctors = [
    {name: "Dr. Willy Nelson", age: 64, specialty: "smoking", status: "healthy", facility_id: Facility.all.sample.id },
    {name: "Snoop Dogg M.D.", age: 55, specialty: "smoking", status: "healthy", facility_id: Facility.all.sample.id },
    {name: "Dr. Elon Musk", age: 38, specialty: "disturbed", status: "healthy",  facility_id: Facility.all.sample.id },
    {name: "House M.D.", age: 59, specialty: "amnesia", status: "healthy", facility_id: Facility.all.sample.id },
    {name: "Lil' Dicky", age: 25, specialty: "disturbed", status: "healthy", facility_id: Facility.all.sample.id },
    {name: "Dr. Mario", age: 41, specialty: "hallucinogenic", status: "healthy", facility_id: Facility.all.sample.id },
    {name: "Prof. Jones", age: 42, specialty: "hallucinogenic", status: "healthy", facility_id: Facility.all.sample.id }
]

doctors.each {| doctor | Doctor.create(doctor)}

patients = [
      {name: "Dennis Roadman", age: 31, status: "healthy", location: "Mess Hall", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id }, 
      {name: "Michael Jackman", age: 52, status: "healthy", location: "Rec Room", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Zooey Saychannel", age: 28, status: "healthy", location: "Soft Room", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Lulu Rancor", age: 42, status: "warning", location: "The Pit", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Kanye East", age: 38 , status: "warning", location: "Isolation Room" , ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "The Weekday", age: 32 , status: "healthy" , location: "The Hills" , ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "The Pebble", age: 48 , status: "healthy" , location: "Soft Room", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Chocolate Ice", age: 53, status: "warning" , location: "Mess Hall", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "X Æ A-12" , age: 1 , status: "warning" , location: "Isolation Room" , ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id }
    ]
    
patients.each {| patient | Patient.create(patient)}