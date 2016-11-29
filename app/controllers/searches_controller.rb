class SearchesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :search

  # GET /searches
  def index
    @q = @searches.search params[:q]
    @searches = @q.result.page(params[:page])
  end

  # GET /searches/1
  def show
  end

  # GET /searches/new
  def new
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  def create
    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: t('success_create') }
        format.json { render :show, status: :created, location: @search }
      else
        format.html { render :new }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @search }
      else
        format.html { render :edit }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def search_params
    params.require(:search).permit(:clocknum, :employee, :training_date, :course_name)
  end
end
