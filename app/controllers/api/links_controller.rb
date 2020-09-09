class Api::LinksController < ApplicationController
  before_action :set_link, except: %i[index]

  def index
    @links = Links.all
  end

  def show; end

  def update
    @link.update link_params
  end

  def delete
    @link.destroy
  end

  def short
    redirect_to @link.url
  end

  private

  def set_link
    @link = Link.find_by_slug(params[:slug])
  end

  def link_params
    params.permit(:name, :slug, :url)
  end
end
