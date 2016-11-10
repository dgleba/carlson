class StfEmployeesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :stf_employee

  # GET /stf_employees
  def index
    @q = @stf_employees.search params[:q]
    @stf_employees = @q.result.page(params[:page])
  end

  # GET /stf_employees/1
  def show
  end

  # GET /stf_employees/new
  def new
  end

  # GET /stf_employees/1/edit
  def edit
  end

  # POST /stf_employees
  def create
    respond_to do |format|
      if @stf_employee.save
        format.html { redirect_to @stf_employee, notice: t('success_create') }
        format.json { render :show, status: :created, location: @stf_employee }
      else
        format.html { render :new }
        format.json { render json: @stf_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stf_employees/1
  def update
    respond_to do |format|
      if @stf_employee.update(stf_employee_params)
        format.html { redirect_to @stf_employee, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @stf_employee }
      else
        format.html { render :edit }
        format.json { render json: @stf_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stf_employees/1
  def destroy
    @stf_employee.destroy
    respond_to do |format|
      format.html { redirect_to stf_employees_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def stf_employee_params
    params.require(:stf_employee).permit(:clocknum, :name, :active_status, :sort)
  end
end
