class TrsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr

  # GET /trs
  def index
    @q = @trs.search params[:q]
    @trs = @q.result.page(params[:page])
  end

  # GET /trs/1
  def show
  end

  # GET /trs/new
  def new
  end

  # GET /trs/1/edit
  def edit
  end

  # POST /trs
  def create
    respond_to do |format|
      if @tr.save
        format.html { redirect_to @tr, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr }
      else
        format.html { render :new }
        format.json { render json: @tr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trs/1
  def update
    respond_to do |format|
      if @tr.update(tr_params)
        format.html { redirect_to @tr, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr }
      else
        format.html { render :edit }
        format.json { render json: @tr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trs/1
  def destroy
    @tr.destroy
    respond_to do |format|
      format.html { redirect_to trs_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_params
    params.require(:tr).permit(:name, :active_status, :sort)
  end
end
