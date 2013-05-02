class Short < ActiveRecord::Base
  attr_accessible :visits, :url, :shorturl
  #before_save :presave
  validates :url, presence: true

  #def presave
  #  self.visits = 0
  #  self.shorturl = (0...4).map{(65+rand(26)).chr}.join.downcase!
  #end
end
