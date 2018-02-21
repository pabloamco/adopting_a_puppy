class CheckoutPage
	include PageObject

	text_field(:name, :id => 'order_name')
	textarea(:address,:id => 'order_address')
	text_field(:email, :id => 'order_email')
	button(:pay_type, :id => 'order_pay_type')

	def complete_order(data)
		self.name = data['name']
		self.address = data['address']
		self.email = data['email']
		self.pay_type = data['pay_type']
		place_order
	end
end
