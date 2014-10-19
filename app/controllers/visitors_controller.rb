class VisitorsController < ApplicationController
  def index
    @scrapers = current_user.scrapers if current_user.present?
  end
end
