class Property < ActiveRecord::Base

  belongs_to :user

  attr_writer :current_step
  
  PROPERTYTYPE = [['Full property', 'full_property'],['Room / Unit','room_or_unit']]

  PRIVACY = [['Private property', 'private_property'],[ 'Shared property', 'shared_property']]

  enum lease_types: ['Monthly', 'Yearly', 'Flexible']
  enum rent_types: ['monthly', 'weekly', 'yearly']

  validates :no_of_badroom, :numericality => { :greater_than => 0 }, :presence => true, :if => lambda { |o| o.current_step == "one" }
  validates_presence_of :no_of_bathroom, :if => lambda { |o| o.current_step == "one" }
  validates_presence_of :lease_type, :if => lambda { |o| o.current_step == "one" }
  validates_presence_of :unit_number, :if => lambda { |o| o.current_step == "one" }
  validates_presence_of :availibility, :if => lambda { |o| o.current_step == "one" }

  validates_presence_of :rent, :if => lambda { |o| o.current_step == "two" }
  validates_presence_of :unit_title, :if => lambda { |o| o.current_step == "two" }
  validates_presence_of :unit_rent, :if => lambda { |o| o.current_step == "two" }

  validates_presence_of :description, :if => lambda { |o| o.current_step == "three" }
  validates_presence_of :rules, :if => lambda { |o| o.current_step == "three" }
  #validates_presence_of :housemates, :if => lambda { |o| o.current_step == "three" }

  def current_step
    @current_step || steps.first
  end
  
  def steps
    %w[one two three]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end
end
