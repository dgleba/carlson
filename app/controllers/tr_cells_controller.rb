class TrCellsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_cell

  # GET /tr_cells
  def index
    @q = @tr_cells.search params[:q]
    @tr_cells = @q.result.page(params[:page])
  end

  # GET /tr_cells/1
  def show
  end

  # GET /tr_cells/new
  def new
  end

  # GET /tr_cells/1/edit
  def edit
  end

  # POST /tr_cells
  def create
    respond_to do |format|
      if @tr_cell.save
        format.html { redirect_to @tr_cell, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_cell }
      else
        format.html { render :new }
        format.json { render json: @tr_cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_cells/1
  def update
    respond_to do |format|
      if @tr_cell.update(tr_cell_params)
        format.html { redirect_to @tr_cell, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_cell }
      else
        format.html { render :edit }
        format.json { render json: @tr_cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_cells/1
  def destroy
    @tr_cell.destroy
    respond_to do |format|
      format.html { redirect_to tr_cells_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_cell_params
    params.require(:tr_cell).permit(:name, :active_status, :sort)
  end
end
