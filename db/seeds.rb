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
    {name: "Disturbed", aggression_level: "Moderate"},
    {name: "Smoking", aggression_level: "Moderate"},
    {name: "Amnesia", aggression_level: "Low"},
    {name: "Hallucinogenic", aggression_level: "High"}
]

ailments.each {| ailment | Ailment.create(ailment)}

administrators = [
    {name: "Alberto Easker", user_name: "t_virus1996", password: "ChrisBluefield", status: "healthy" },
    {name: "John Conebush", user_name: "jcone129", password: "IWishIWasLonetree", status: "healthy" },
    {name: "Payton Blue", user_name: "payblue77", password: "WhyWasINotNamedGray", status: "healthy" }
]

administrators.each {| administrator | Administrator.create(administrator)}

facilities = [
    {name: "Restful Springs", location: "Colorado Springs, CO", status: "Safe", administrator_id: Administrator.first.id },
    {name: "Salt Lake Restoration", location: "Salt Lake City, UT", status: "Safe", administrator_id: Administrator.last.id },
    {name: "Illumination Chicago", location: "Chicago, IL", status: "Safe", administrator_id: Administrator.second.id }
]

facilities.each {| facility | Facility.create(facility)}

doctors = [
    {name: "Dr. Willy Nelson", age: 64, specialty: "Smoking", status: "Healthy", facility_id: Facility.all.sample.id },
    {name: "Snoop Dogg M.D.", age: 55, specialty: "Smoking", status: "Healthy", facility_id: Facility.all.sample.id },
    {name: "Dr. Elon Musk", age: 38, specialty: "Disturbed", status: "Healthy",  facility_id: Facility.all.sample.id },
    {name: "House M.D.", age: 59, specialty: "Amnesia", status: "Healthy", facility_id: Facility.all.sample.id },
    {name: "Lil' Dicky", age: 25, specialty: "Disturbed", status: "Healthy", facility_id: Facility.all.sample.id },
    {name: "Dr. Mario", age: 41, specialty: "Hallucinogenic", status: "Healthy", facility_id: Facility.all.sample.id },
    {name: "Prof. Jones", age: 42, specialty: "Hallucinogenic", status: "Healthy", facility_id: Facility.all.sample.id }
]

doctors.each {| doctor | Doctor.create(doctor)}

patients = [
      {name: "Dennis Roadman", age: 31, status: "Healthy", location: "Mess Hall", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id }, 
      {name: "Michael Jackman", age: 52, status: "Healthy", location: "Rec Room", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Zooey Saychannel", age: 28, status: "Healthy", location: "Soft Room", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Lulu Rancor", age: 42, status: "Warning", location: "The Pit", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Kanye East", age: 38 , status: "Warning", location: "Isolation Room" , ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "The Weekday", age: 32 , status: "Healthy" , location: "The Hills" , ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "The Pebble", age: 48 , status: "Healthy" , location: "Soft Room", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "Chocolate Ice", age: 53, status: "Warning" , location: "Mess Hall", ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id },
      {name: "X Æ A-12" , age: 1 , status: "Warning" , location: "Isolation Room" , ailment_id: Ailment.all.sample.id, doctor_id: Doctor.all.sample.id }
    ]
    
    patients.each {| patient | Patient.create(patient)}