class LinksController < ApplicationController
  validates :slug, :target_url, presence: true

  def index
    @link = Link.new(user_id: current_user. slug: params[:slug], target_url: params[:target_url], created at: params[:created_at])
    @link.save

  end

  def create

    @link = Link.new(user_id: current_user. slug: params[:slug], target_url: params[:target_url])
    @link.save

    flash[:success] = "New link added!"
    redirect_to "/links"

  end
end
