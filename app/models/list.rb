class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :permissions,
    :inclusion  => { :in => [ 'open', 'viewable', 'private'] }
end
