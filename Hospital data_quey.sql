create table Appointment(
	appointment_id int primary key,
	appointment_date Date,
	doctor_name varchar(250),
	specialization varchar(250),
	diagnosis text ,
	medication text
	)

create table insurance(
	insurane_id int primary key,
	insurance_provider varchar(250),
	policy_number varchar(250),
	insurance_company varchar(250)
	)

create table Medical_record(
	record_id int primary key,
	appointment_id int,
	FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id),
    insurane_id int,
	FOREIGN KEY (insurane_id) REFERENCES insurance(insurane_id),
	patient_name varchar(250),
	date_of_birth Date,
	address varchar(250),
	emergency_contact int,
	emergency_contact_name varchar(250)
	
)

INSERT INTO Medical_record (record_id ,appointment_id,insurane_id, patient_name, date_of_birth, address, emergency_contact, emergency_contact_name)
VALUES
  (1,1,1,'John Doe', '1980-01-01', '123 Main St', 555123456, 'Jane Doe'),
  (2,2,2,'Alice Smith', '1990-02-15', '456 Elm St', 555987654, 'Charles Smith'),
  (3,3,3,'David Jones', '1975-12-24', '789 Maple Ave', 555543210, 'Mary Jones'),
  (4,4,4,'Lisa Williams', '2000-05-08', '1011 Oak Blvd', 555234567, 'Michael Williams'),
  (5,5,5,'Michael Brown', '1968-09-19', '1213 Pine Rd', 555789012, 'Elizabeth Brown'),
  (6,6,6,'Emily Garcia', '1985-03-10', '1415 Spruce Ln', 555345678, 'Robert Garcia'),
  (7,7,7,'Matthew Hernandez', '1995-07-27', '1617 Birch Way', 555890123, 'Jennifer Hernandez'),
  (8,8,8,'Ashley Miller', '2002-01-06', '1819 Poplar Dr', 555456789, 'Joseph Miller'),
  (9,9,9,'Daniel Johnson', '1970-11-03', '2021 Elm St', 555901234, 'Susan Johnson'),
  (10,10,10,'Sarah Davis', '1988-04-21', '2223 Maple Ave', 555567890, 'William Davis'),
  (11,11,11,'Christopher Clark', '1997-08-12', '2425 Oak Blvd', 555012345, 'Margaret Clark'),
  (12,12,12,'Jennifer Wilson', '2001-02-18', '2627 Pine Rd', 555678901, 'Richard Wilson'),
  (13,13,13,'Robert Moore', '1969-06-25', '2829 Spruce Ln', 555123456, 'Barbara Moore'),
  (14,14,14,'Catherine Lewis', '1987-05-04', '3031 Birch Way', 555789012, 'Thomas Lewis'),
  (15,15,15,'James Garcia', '1996-09-16', '3233 Poplar Dr', 555234567, 'Laura Garcia')

INSERT INTO Appointment (appointment_id, appointment_date, doctor_name, specialization, diagnosis, medication)
Values(1,'2024-05-20', 'Dr. Thompson', 'Cardiology', 'Chest pain', 'Aspirin 81mg daily'),
  (2,'2024-04-12', 'Dr. Williams', 'Dermatology', 'Eczema', 'Hydrocortisone cream twice daily'),
  (3,'2024-03-08', 'Dr. Lee', 'Dentistry', 'Root canal', 'Amoxicillin 500mg three times daily for 7 days'),
  (4,'2024-02-15', 'Dr. Brown', 'Ophthalmology', 'Glaucoma', 'Timolol eye drops once daily'),
  (5,'2024-01-22', 'Dr. Garcia', 'Neurology', 'Migraines', 'Sumatriptan 100mg as needed'),
  (6,'2024-06-10', 'Dr. Jones', 'Pediatrics', 'Ear infection', 'Amoxicillin 250mg three times daily for 10 days'),
  (7,'2024-05-30', 'Dr. Robinson', 'Orthopedics', 'Ankle sprain', 'Rest, Ice, Compression, Elevation'),
  (8,'2024-04-25', 'Dr. Miller', 'Gastroenterology', 'Stomach ache', 'Pepto-Bismol as needed'),
  (9,'2024-03-15', 'Dr. Hernandez', 'Psychiatry', 'Anxiety', 'Escitalopram 10mg daily'),
  (10,'2024-02-29', 'Dr. Wilson', 'Obstetrics & Gynecology', 'Prenatal checkup', 'Prenatal vitamins daily'),
  (11,'2024-06-17', 'Dr. Davis', 'Pulmonology', 'Asthma', 'Albuterol inhaler as needed'),
  (12,'2024-05-01', 'Dr. Lewis', 'Urology', 'Urinary tract infection', 'Trimethoprim-sulfamethoxazole twice daily for 7 days'),
  (13,'2024-03-29', 'Dr. Moore', 'Rheumatology', 'Arthritis', 'Ibuprofen 200mg three times daily'),
  (14,'2024-02-10', 'Dr. Garcia', 'Otolaryngology', 'Sinusitis', 'Amoxicillin-clavulanate 875mg twice daily for 10 days'),
  (15,'2024-01-18', 'Dr. Clark', 'Endocrinology', 'Diabetes', 'Metformin 500mg twice daily')


INSERT INTO insurance (insurane_id,insurance_provider, policy_number,insurance_company )
VALUES 
  (1,'Blue Cross Blue Shield', '123456789A','Acme Insurance'),
  (2,'Aetna', '987654321B','Secure Life'),
  (3,'Cigna', '012345678C','Future Protectors'),
  (4,'UnitedHealthcare', '234567890D','Global Assurance'),
  (5,'Humana', '456789012E','Safety Net Insurance'),
  (6,'Kaiser Permanente', '567890123F','Prime Insurance Co.'),
  (7,'WellCare', '678901234G','EverSafe Insurance'),
  (8,'Health Net', '789012345H','Shield Insurers'),
  (9,'Aviva', '890123456I','Guardians Insurance'),
  (10,'MagnaCare', '901234567J','Reliable Coverage Inc.'),
  (11,'Harvard Pilgrim Health Plan', '098765432K','Trusty Insure'),
  (12,'Molina Healthcare', '109876543L','Zenith Insurance'),
  (13,'Oscar Health', '110987654M','Optimum Insurance'),
  (14,'Ambetter from WellCare', '121098765N','Horizon Insurers'),
  (15,'Highmark Blue Shield', '131109876O','Peak Protection')


select * from Medical_record
select * from Appointment
select * from insurance



