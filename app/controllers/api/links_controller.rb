class Api::LinksController < Api::BaseController
  before_action :set_link, except: %i[index create]

  def index
    @links = Link.page(params[:page])
  end

  def show; end

  def create
    @link = Link.create link_params
  end

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
    @link = Link.find_by_id(params[:id])
  end

  def link_params
    params.permit(:name, :slug, :url)
  end
end
