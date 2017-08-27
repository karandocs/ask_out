class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum gender: [:male, :female]
  has_many :crushes, :class_name => 'Match', :foreign_key => 'match_from_id'
  has_many :senders, :class_name => 'Match', :foreign_key => 'match_to_id'
  has_many :notifications
end
