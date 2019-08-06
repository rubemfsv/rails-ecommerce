class Site::Profile::AdsController < Site::ProfileController
  before_action :set_ad, only: [:edit]
  def index
    @ads = Ad.for_member(current_member)
  end

  def edit
    #
  end

  private

    def set_ad
      @ad = Ad.find(params[:id])
    end
end
