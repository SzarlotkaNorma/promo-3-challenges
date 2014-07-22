class Order

attr_reader :order_id, :date
attr_accessor :content, :customer_id, :employee_id, :completed?

  def initialize(order_id, date)
    @order_id = order_id
    @date = Time.new

    @order_content = []
    @customer_id = customer_id
    @employee_id = employee_id

    @completed? = false
  end

end