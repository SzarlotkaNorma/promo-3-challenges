class Order

attr_reader :order_id, :date
attr_accessor :order_content, :customer_id, :employee_id, :completed?

  def initialize(id, date)
    @id = id
    @date = Time.new

    @order_content = []
    @customer_id = 0
    @employee_id  = 0

    @completed? = false
  en