class Paciente < ActiveRecord::Base
  enum sangue: [ "A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-" ]
#  enum sangue: [ :Apositivo, :Anegativo, :Bpositivo, :Bnegativo, :Opositivo, :Onegativo, :ABpositivo, :ABnegativo ]
end
