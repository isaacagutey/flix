require 'spec_helper'

describe VideosController do
  describe "GET show" do
    it "sets @video with authenticated user" do
      session[:user_id] = Fabricate(:user).id 
      video = Fabricate(:video)
      get :show, id: video.slug
      expect(assigns(:video)).to eq(video)
    end

    it "it redirects user to sign in path when user is unauthenticated" do
      video = Fabricate(:video)
      get :show, id: video.id
      expect(response).to redirect_to root_path
    end
  end

  describe "POST search" do
    it "returns searched movie" do
      session[:user_id] = Fabricate(:user).id 
      futurama = Fabricate(:video, title: "Futurama")
      post :search, :q => 'Futurama'
      expect(assigns(:results)).to eq([futurama])
    end
  end

end