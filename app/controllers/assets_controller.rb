class AssetsController < ApplicationController
  before_filter :login_required

  def index
    @assets = Asset.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assets }
    end
  end

end
