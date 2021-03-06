class ScrapersController < ApplicationController
  respond_to :html
  before_filter :authenticate_user!
  before_action :set_scraper, only: [:show, :edit, :update, :destroy]

  def index
    @scrapers = current_user.scrapers
    respond_with(@scrapers)
  end

  def show
    respond_with(@scraper)
  end

  def new
    @scraper = Scraper.new
    respond_with(@scraper)
  end

  def edit
  end

  def create
    @scraper = Scraper.new(scraper_params)
    @scraper.user_id = current_user.id
    @scraper.save
    respond_with(@scraper)
  end

  def update
    @scraper.update(scraper_params)
    respond_with(@scraper)
  end

  def destroy
    @scraper.destroy
    respond_with(@scraper)
  end

  private

    def set_scraper
      @scraper = Scraper.find(params[:id])
    end

    def scraper_params
      params.require(:scraper).permit(:name, :url, :target_element, :schedule, :extract, :user_id, :subject)
    end
end
