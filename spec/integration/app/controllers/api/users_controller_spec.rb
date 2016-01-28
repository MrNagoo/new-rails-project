require "rails_helper"

describe Api::UsersController, type: :controller do
  describe "#index" do
    let(:user) { User.create(name: "test")}

    it "returns 200 success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns a list of users in json" do
      get :index
      expect(response).to eq([{id: user.id, name: user.name}])
    end
  end
end
