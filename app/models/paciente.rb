class Paciente < ActiveRecord::Base
  enum sangue: [ "A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-" ]
end
