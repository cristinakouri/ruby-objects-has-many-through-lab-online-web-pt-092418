class Patient 
  attr_accessor :name, :appointments, :doctor  
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
    @doctor = doctor 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date) 
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment  
    appointment
  end 
  
  def doctors 
    @appointments.collect do |appointment|
      appointment.doctor 
    end 
  end 
  
end 