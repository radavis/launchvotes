class User < ActiveRecord::Base
  has_many :nominations, foreign_key: :nominee_id
  has_many :awards, foreign_key: :nomination_id, class_name: 'Nomination'
  has_many :votes

  validates :uid, presence: true
  validates :provider, presence: true
  validates :uid, uniqueness: { scope: :provider }
  validates :email, presence: true
  validates :name, presence: true
  validates :pic_url, presence: true
end