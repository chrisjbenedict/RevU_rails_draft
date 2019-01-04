class Student < ApplicationRecord
  has_secure_password

  has_many :reviews, dependent: :destroy
  has_many :schools, through: :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, numericality: {greater_than: 15}
  validates :username, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
