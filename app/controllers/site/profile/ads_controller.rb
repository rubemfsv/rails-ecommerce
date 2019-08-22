class Site::Profile::AdsController < Site::ProfileController
  before_action :set_ad, only: [:edit, :update]
  def index
    @ads = Ad.for_member(current_member)
  end

  def edit
    #
  end

  def update
    if @ad.update(params_ad)
      redirect_to site_profile_ads_path, notice: "#{t('messages.updated')}"
    else
      render :edit
    end
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(params_ad)
    @ad.member = current_member

    if @ad.save
      redirect_to site_profile_ads_path, notice: "Anúncio cadastrado com sucesso!"
    else
      render :new
    end
  end

  private

    def set_ad
      @ad = Ad.find(params[:id])
    end

    def params_ad
      params.require(:ad).permit(:id, :title, :category_id, :picture, :price, :finish_date,
       :description, :description_md, :description_short)
    end
end
