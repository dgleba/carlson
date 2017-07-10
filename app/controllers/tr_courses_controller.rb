class TrCoursesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_course

  # GET /tr_courses
  def index
    @q = @tr_courses.search params[:q]
    @tr_courses = @q.result.page(params[:page])
  end

  # GET /tr_courses/1
  def show
  end

  # GET /tr_courses/new
  def new
  end

  # GET /tr_courses/1/edit
  def edit
  end

  # POST /tr_courses
  def create
    respond_to do |format|
      if @tr_course.save
        format.html { redirect_to @tr_course, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_course }
      else
        format.html { render :new }
        format.json { render json: @tr_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_courses/1
  def update
    respond_to do |format|
      if @tr_course.update(tr_course_params)
        format.html { redirect_to @tr_course, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_course }
      else
        format.html { render :edit }
        format.json { render json: @tr_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_courses/1
  def destroy
    @tr_course.destroy
    respond_to do |format|
      format.html { redirect_to tr_courses_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_course_params
    params.require(:tr_course).permit(:name, :number, :category, :description, :active_status, :sort)
  end
end
