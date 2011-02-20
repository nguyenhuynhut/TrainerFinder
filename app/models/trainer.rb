class Trainer < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :bio
  validates_presence_of :citiesServed
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "must be valid"
  validates_length_of :name, :maximum => 255
  validates_length_of :priceRange, :maximum => 255
  validates_length_of :phone, :maximum => 255
  validates_length_of :citiesServed, :maximum => 255 
  validates_length_of :certs, :maximum => 255 
  validates_length_of :education, :maximum => 255 
  validates_length_of :specialty, :maximum => 255 
  validates_length_of :bio, :maximum => 255
  validates_length_of :philos, :maximum => 255 
  validates_numericality_of :rating, :only_integer => true, :message => "can only be whole number.", :allow_nil => true
  validates_numericality_of :lat, :only_integer => false, :message => "can only be float", :allow_nil => true
  validates_numericality_of :lon, :only_integer => false, :message => "can only be float", :allow_nil => true
end
