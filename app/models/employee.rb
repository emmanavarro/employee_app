class Employee < ApplicationRecord
  enum departments: { acc: "Accounting", fin: "Finance", op: "Operations", sec: "Security", hr: "Human Resources" }

  validates :first_name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 30 }

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL }, length: { minimum: 5, maximum: 50 }

  validates :phone, numericality: { only_integer: true }, length: { is: 10 }
  validates :position, length: { maximum: 30 }
  validates :salary, numericality: true
  validates :department, presence: true
end
