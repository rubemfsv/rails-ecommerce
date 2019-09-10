class Site::HomeController < SiteController
  layout 'site'
  def index
    @categories = Category.order_by_description
    @ads = Ad.desc_order(params[:page])
    @carousel = Ad.random_carousel(3)
  end
end
