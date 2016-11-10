class TrCustomersController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :tr_customer

  # GET /tr_customers
  def index
    @q = @tr_customers.search params[:q]
    @tr_customers = @q.result.page(params[:page])
  end

  # GET /tr_customers/1
  def show
  end

  # GET /tr_customers/new
  def new
  end

  # GET /tr_customers/1/edit
  def edit
  end

  # POST /tr_customers
  def create
    respond_to do |format|
      if @tr_customer.save
        format.html { redirect_to @tr_customer, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tr_customer }
      else
        format.html { render :new }
        format.json { render json: @tr_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_customers/1
  def update
    respond_to do |format|
      if @tr_customer.update(tr_customer_params)
        format.html { redirect_to @tr_customer, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tr_customer }
      else
        format.html { render :edit }
        format.json { render json: @tr_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_customers/1
  def destroy
    @tr_customer.destroy
    respond_to do |format|
      format.html { redirect_to tr_customers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tr_customer_params
    params.require(:tr_customer).permit(:name, :active_status, :sort)
  end
end
