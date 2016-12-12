class Search1sController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :search1

  # GET /search1s
  def index
    @q = @search1s.ransack params[:q]
    @search1s = @q.result.page(params[:page])
  end

  # GET /search1s/1
  def show
  end

  # GET /search1s/new
  def new
  end

  # GET /search1s/1/edit
  def edit
  end

  # POST /search1s
  def create
    respond_to do |format|
      if @search1.save
        format.html { redirect_to @search1, notice: t('success_create') }
        format.json { render :show, status: :created, location: @search1 }
      else
        format.html { render :new }
        format.json { render json: @search1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search1s/1
  def update
    respond_to do |format|
      if @search1.update(search1_params)
        format.html { redirect_to @search1, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @search1 }
      else
        format.html { render :edit }
        format.json { render json: @search1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search1s/1
  def destroy
    @search1.destroy
    respond_to do |format|
      format.html { redirect_to search1s_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def search1_params
    params.require(:search1).permit(:clocknum, :employee, :training_date, :course_name, :id, :training_record_id, :dummy)
  end
end
