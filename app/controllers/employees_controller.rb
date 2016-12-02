class EmployeesController < ApplicationController
 before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find(params[:id])

  end

  def edit
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def set_employee
      @employee = Employee.find(params[:id])
    end

  def employee_params
   params.require(:employee).permit(:name, :address, :phonenumber, :email)
 end
end
