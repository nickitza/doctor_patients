

10.times do 
  doctor = Doctor.create(last_name: Faker::Games::Dota.hero)
  10.times do 
    
    patient = Patient.create(
      first_name: Faker::Name.first_name, 
      last_name: Faker::Name.last_name
      )

    Appointment.create(
      date: Faker::Date.forward(25),
      doctor_id: doctor.id,
      patient_id: patient.id
      )
  end
end
  
puts "10 doctors, 100 patients and 100 appts have been created, you glorious badass."