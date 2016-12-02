require 'rails_helper'
describe Employee do 
	it "skjdhsjkds " do 
		employee1 =Employee.create(name:"harry",email:"meerasahebshaik12@gmail.com")
		employee2 =Employee.create(address:"mogullu")
		employee3 =Employee.create(phonenumber:"9000466732")
		employee4 =Employee.create(email:"meerasheb@gmail.com")
		expect(Employee.all).to eq [employee1,employee2,employee3, employee4]
	end
end