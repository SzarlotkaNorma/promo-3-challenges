class Restaurant

  attr_reader :name, :location, :phone_number, :number_of_employees, :number_of_customers
  attr_accessor :employees, :customers

  def initialize(name, location, phone_number)
    @name = name
    @location = location
    @phone_number = phone_number

    @employees = []
    @number_of_employees = employees.size

    @customers = []
    @number_of_customers = customers.size

    @meals = {
      lamb_with_eggplant: 17,
      chili_con_carne: 15,
      t_bone: 28,
      spare_ribs: 22,
    }
  end
end