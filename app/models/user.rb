class User < ApplicationRecord

  has_one :curriculum_vitae
  has_many :connections

  has_many :visits
end