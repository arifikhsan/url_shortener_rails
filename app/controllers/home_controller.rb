class HomeController < ApplicationController
  def index; end

  def short
    @link = Link.find_by_slug(params[:slug])
    redirect_to @link.url
  end
end
