class SearchTestsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :search_test

  # GET /search_tests
  def index
    @q = @search_tests.search params[:q]
    @search_tests = @q.result.page(params[:page])
  end

  # GET /search_tests/1
  def show
  end

  # GET /search_tests/new
  def new
  end

  # GET /search_tests/1/edit
  def edit
  end

  # POST /search_tests
  def create
    respond_to do |format|
      if @search_test.save
        format.html { redirect_to @search_test, notice: t('success_create') }
        format.json { render :show, status: :created, location: @search_test }
      else
        format.html { render :new }
        format.json { render json: @search_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_tests/1
  def update
    respond_to do |format|
      if @search_test.update(search_test_params)
        format.html { redirect_to @search_test, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @search_test }
      else
        format.html { render :edit }
        format.json { render json: @search_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_tests/1
  def destroy
    @search_test.destroy
    respond_to do |format|
      format.html { redirect_to search_tests_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def search_test_params
    params.require(:search_test).permit(:clocknum, :employee, :training_date, :course_name)
  end
end
