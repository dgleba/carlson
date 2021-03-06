require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe StfAssetsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # StfAsset. As you add validations to StfAsset, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StfAssetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all stf_assets as @stf_assets" do
      stf_asset = StfAsset.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:stf_assets)).to eq([stf_asset])
    end
  end

  describe "GET #show" do
    it "assigns the requested stf_asset as @stf_asset" do
      stf_asset = StfAsset.create! valid_attributes
      get :show, {:id => stf_asset.to_param}, valid_session
      expect(assigns(:stf_asset)).to eq(stf_asset)
    end
  end

  describe "GET #new" do
    it "assigns a new stf_asset as @stf_asset" do
      get :new, {}, valid_session
      expect(assigns(:stf_asset)).to be_a_new(StfAsset)
    end
  end

  describe "GET #edit" do
    it "assigns the requested stf_asset as @stf_asset" do
      stf_asset = StfAsset.create! valid_attributes
      get :edit, {:id => stf_asset.to_param}, valid_session
      expect(assigns(:stf_asset)).to eq(stf_asset)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new StfAsset" do
        expect {
          post :create, {:stf_asset => valid_attributes}, valid_session
        }.to change(StfAsset, :count).by(1)
      end

      it "assigns a newly created stf_asset as @stf_asset" do
        post :create, {:stf_asset => valid_attributes}, valid_session
        expect(assigns(:stf_asset)).to be_a(StfAsset)
        expect(assigns(:stf_asset)).to be_persisted
      end

      it "redirects to the created stf_asset" do
        post :create, {:stf_asset => valid_attributes}, valid_session
        expect(response).to redirect_to(StfAsset.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved stf_asset as @stf_asset" do
        post :create, {:stf_asset => invalid_attributes}, valid_session
        expect(assigns(:stf_asset)).to be_a_new(StfAsset)
      end

      it "re-renders the 'new' template" do
        post :create, {:stf_asset => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested stf_asset" do
        stf_asset = StfAsset.create! valid_attributes
        put :update, {:id => stf_asset.to_param, :stf_asset => new_attributes}, valid_session
        stf_asset.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested stf_asset as @stf_asset" do
        stf_asset = StfAsset.create! valid_attributes
        put :update, {:id => stf_asset.to_param, :stf_asset => valid_attributes}, valid_session
        expect(assigns(:stf_asset)).to eq(stf_asset)
      end

      it "redirects to the stf_asset" do
        stf_asset = StfAsset.create! valid_attributes
        put :update, {:id => stf_asset.to_param, :stf_asset => valid_attributes}, valid_session
        expect(response).to redirect_to(stf_asset)
      end
    end

    context "with invalid params" do
      it "assigns the stf_asset as @stf_asset" do
        stf_asset = StfAsset.create! valid_attributes
        put :update, {:id => stf_asset.to_param, :stf_asset => invalid_attributes}, valid_session
        expect(assigns(:stf_asset)).to eq(stf_asset)
      end

      it "re-renders the 'edit' template" do
        stf_asset = StfAsset.create! valid_attributes
        put :update, {:id => stf_asset.to_param, :stf_asset => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested stf_asset" do
      stf_asset = StfAsset.create! valid_attributes
      expect {
        delete :destroy, {:id => stf_asset.to_param}, valid_session
      }.to change(StfAsset, :count).by(-1)
    end

    it "redirects to the stf_assets list" do
      stf_asset = StfAsset.create! valid_attributes
      delete :destroy, {:id => stf_asset.to_param}, valid_session
      expect(response).to redirect_to(stf_assets_url)
    end
  end

end
