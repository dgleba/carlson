class TrProgramsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_program

  # GET /tr_programs
  def index
    @q = @tr_programs.search params[:q]
    @tr_programs = @q.result.page(params[:page])
  end

  # GET /tr_programs/1
  def show
  end

  # GET /tr_programs/new
  def new
  end

  # GET /tr_programs/1/edit
  def edit
  end

  # POST /tr_programs
  def create
    respond_to do |format|
      if @tr_program.save
        format.html { redirect_to @tr_program, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_program }
      else
        format.html { render :new }
        format.json { render json: @tr_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_programs/1
  def update
    respond_to do |format|
      if @tr_program.update(tr_program_params)
        format.html { redirect_to @tr_program, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_program }
      else
        format.html { render :edit }
        format.json { render json: @tr_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_programs/1
  def destroy
    @tr_program.destroy
    respond_to do |format|
      format.html { redirect_to tr_programs_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_program_params
    params.require(:tr_program).permit(:name, :active_status, :sort)
  end
end
