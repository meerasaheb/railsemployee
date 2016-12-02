require 'rails_helper'
describe EmployeeController type: :controller do
	 context  "index" do 
	 	it "sdjfsdkjh"do
	 	employee = Employee.create(name: "meera",email:"meerasahebshaik12@gmail.com")
        get :index
        expect(response).to render_template("index")
        end
  end
end