class Employee < ApplicationRecord
  enum departments: { acc: "Accounting", fin: "Finance", op: "Operations", sec: "Security", hr: "Human Resources" }

  validates :first_name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 30 }

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL }, length: { minimum: 5, maximum: 50 }

  validates :phone, numericality: { only_integer: true }, length: { is: 10 }
  validates :position, presence: true, length: { maximum: 30 }
  validates :salary, presence: true, numericality: true
  validates :department, presence: true

  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |employee|
        csv << employee.attributes.values_at(*fields)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      employee_elements = row.to_h
      employee = find_or_create_by!(first_name: employee_elements['first_name'],
                                    last_name: employee_elements['last_name'],
                                    phone: employee_elements['phone'],
                                    email: employee_elements['email'],
                                    position: employee_elements['position'],
                                    salary: employee_elements['salary'],
                                    department: employee_elements['department'])
      employee.update(employee_elements)
    end
  end
end
