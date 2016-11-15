class TrTrainingEmployeesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_training_employee

  # GET /tr_training_employees
  def index
    @q = @tr_training_employees.ransack params[:q]
    # ransack: include associated tables in the search..
    @tr_training_employees = @q.result.page(params[:page]).includes(:stf_employee, :tr_training_record)
  end

  # GET /tr_training_employees/1
  def show
  end

  # GET /tr_training_employees/new
  def new
  end

  # GET /tr_training_employees/1/edit
  def edit
  end

  # POST /tr_training_employees
  def create
    respond_to do |format|
      if @tr_training_employee.save
        format.html { redirect_to @tr_training_employee, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_training_employee }
      else
        format.html { render :new }
        format.json { render json: @tr_training_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_training_employees/1
  def update
    respond_to do |format|
      if @tr_training_employee.update(tr_training_employee_params)
        format.html { redirect_to @tr_training_employee, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_training_employee }
      else
        format.html { render :edit }
        format.json { render json: @tr_training_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_training_employees/1
  def destroy
    @tr_training_employee.destroy
    respond_to do |format|
      format.html { redirect_to tr_training_employees_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_training_employee_params
    params.require(:tr_training_employee).permit(:name, :description, :output, :tr_training_record_id, :stf_employee_id, :searchm_cont, stf_employees_attributes: [:id, :clocknum, :name])
  end
end
