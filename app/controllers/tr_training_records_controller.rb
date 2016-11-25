class TrTrainingRecordsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_training_record

  # GET /tr_training_records
  def index
    @q = @tr_training_records.ransack params[:q]
    # ransack: include associated tables in the search..
    @tr_training_records = @q.result.page(params[:page]).includes(:tr_course, :tr_type, :tr_program)
  end

  # GET /tr_training_records/1
  def show
  end

  # GET /tr_training_records/new
  def new
    @signed = false
  end

  # GET /tr_training_records/1/edit
  def edit
  end

  # POST /tr_training_records
  def create
    respond_to do |format|
      @tr_training_record.user = current_user
      if @tr_training_record.save
        format.html { redirect_to @tr_training_record, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_training_record }
      else
        format.html { render :new }
        format.json { render json: @tr_training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_training_records/1
  def update
    respond_to do |format|
      if @tr_training_record.update(tr_training_record_params)
        format.html { redirect_to @tr_training_record, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_training_record }
      else
        format.html { render :edit }
        format.json { render json: @tr_training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_training_records/1
  def destroy
    @tr_training_record.destroy
    respond_to do |format|
      format.html { redirect_to tr_training_records_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_training_record_params
    params.require(:tr_training_record).permit(:tr_course_id, :training_date, :details_of_training, :hours_trained, :location, :swi, :path_to_training_material, :tr_type_id, :tr_customer_id, :tr_program_id, :tr_part_id, :tr_cell_id, :stf_asset_id, :user_id, {tr_training_employees_attributes: [:id, :description, :name, :output, :stf_employee_id, :_destroy , stf_employees_attributes: [:id, :clocknum, :name, :active_status, :_destroy]]}, :trainer)
  end
end
