class TrPartsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_part

  # GET /tr_parts
  def index
    @q = @tr_parts.search params[:q]
    @tr_parts = @q.result.page(params[:page])
  end

  # GET /tr_parts/1
  def show
  end

  # GET /tr_parts/new
  def new
  end

  # GET /tr_parts/1/edit
  def edit
  end

  # POST /tr_parts
  def create
    respond_to do |format|
      if @tr_part.save
        format.html { redirect_to @tr_part, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_part }
      else
        format.html { render :new }
        format.json { render json: @tr_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_parts/1
  def update
    respond_to do |format|
      if @tr_part.update(tr_part_params)
        format.html { redirect_to @tr_part, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_part }
      else
        format.html { render :edit }
        format.json { render json: @tr_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_parts/1
  def destroy
    @tr_part.destroy
    respond_to do |format|
      format.html { redirect_to tr_parts_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_part_params
    params.require(:tr_part).permit(:name, :active_status, :sort)
  end
end
