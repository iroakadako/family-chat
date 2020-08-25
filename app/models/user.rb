class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :nickname, presence: true, uniqueness: true

  # No use email
  def email_required?
    false
  end

  def email_changed?
    false
  end
  
end
