class TrTypesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_type

  # GET /tr_types
  def index
    @q = @tr_types.search params[:q]
    @tr_types = @q.result.page(params[:page])
  end

  # GET /tr_types/1
  def show
  end

  # GET /tr_types/new
  def new
  end

  # GET /tr_types/1/edit
  def edit
  end

  # POST /tr_types
  def create
    respond_to do |format|
      if @tr_type.save
        format.html { redirect_to @tr_type, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_type }
      else
        format.html { render :new }
        format.json { render json: @tr_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_types/1
  def update
    respond_to do |format|
      if @tr_type.update(tr_type_params)
        format.html { redirect_to @tr_type, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_type }
      else
        format.html { render :edit }
        format.json { render json: @tr_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_types/1
  def destroy
    @tr_type.destroy
    respond_to do |format|
      format.html { redirect_to tr_types_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_type_params
    params.require(:tr_type).permit(:name, :active_status, :sort)
  end
end
