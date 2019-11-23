class Actor < ActiveRecord::Base
  has_many :characters
 
  def full_name
    "#{self.first_name} #{self.second_name}"
  end 
  
  def list_roles
    self.characters.collect do |character|
    "#{self.character} - #{character.show.name}"
  end.join
end 

