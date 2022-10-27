require 'faker'

# Creating X Cities
10.times do
  cities = City.create(
    name: Faker::Address.city
  )
end

# Creating X Speciatly
10.times do
  specialty = Specialty.create(
    name: Faker::Lorem.words(number: 1)
  )
end

# Creating X times Patient
10.times do
  patient = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: rand(1..10)
  )
end

# Creating X times Doctors
10.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: rand(10_000..95_000),
    city_id: rand(1..10),
    specialty_id: rand(1..10)
  )
end

# Creating X times Appointement
10.times do
  appointment = Appointment.create(
    doctor_id: rand(1..10),
    patient_id: rand(1..10),
    date: Faker::Date.between(from: 2.days.ago, to: 3.year.from_now),
    city_id: rand(1..10)
  )
end

puts 'Action Successfully Conclued'
