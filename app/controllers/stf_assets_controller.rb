class StfAssetsController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :stf_asset

  # GET /stf_assets
  def index
    @q = @stf_assets.search params[:q]
    @stf_assets = @q.result.page(params[:page])
  end

  # GET /stf_assets/1
  def show
  end

  # GET /stf_assets/new
  def new
  end

  # GET /stf_assets/1/edit
  def edit
  end

  # POST /stf_assets
  def create
    respond_to do |format|
      if @stf_asset.save
        format.html { redirect_to @stf_asset, notice: t('success_create') }
        format.json { render :show, status: :created, location: @stf_asset }
      else
        format.html { render :new }
        format.json { render json: @stf_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stf_assets/1
  def update
    respond_to do |format|
      if @stf_asset.update(stf_asset_params)
        format.html { redirect_to @stf_asset, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @stf_asset }
      else
        format.html { render :edit }
        format.json { render json: @stf_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stf_assets/1
  def destroy
    @stf_asset.destroy
    respond_to do |format|
      format.html { redirect_to stf_assets_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def stf_asset_params
    params.require(:stf_asset).permit(:assetnum, :description, :active_status, :sort)
  end
end
