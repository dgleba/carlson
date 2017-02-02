class TrSecondaryCourseNamesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_secondary_course_name

  # GET /tr_secondary_course_names
  def index
    @q = @tr_secondary_course_names.search params[:q]
    @tr_secondary_course_names = @q.result.page(params[:page])
  end

  # GET /tr_secondary_course_names/1
  def show
  end

  # GET /tr_secondary_course_names/new
  def new
  end

  # GET /tr_secondary_course_names/1/edit
  def edit
  end

  # POST /tr_secondary_course_names
  def create
    respond_to do |format|
      if @tr_secondary_course_name.save
        format.html { redirect_to @tr_secondary_course_name, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_secondary_course_name }
      else
        format.html { render :new }
        format.json { render json: @tr_secondary_course_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_secondary_course_names/1
  def update
    respond_to do |format|
      if @tr_secondary_course_name.update(tr_secondary_course_name_params)
        format.html { redirect_to @tr_secondary_course_name, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_secondary_course_name }
      else
        format.html { render :edit }
        format.json { render json: @tr_secondary_course_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_secondary_course_names/1
  def destroy
    @tr_secondary_course_name.destroy
    respond_to do |format|
      format.html { redirect_to tr_secondary_course_names_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_secondary_course_name_params
    params.require(:tr_secondary_course_name).permit(:name, :active_status, :sort)
  end
end
