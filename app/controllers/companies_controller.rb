class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    respond_to do |f|
      f.html
      f.json { render json: @companies }
    end
  end

  def show
    @company = Company.find(params[:id])
    respond_to do |f|
      f.html
      f.json { 
        render json: @company
      }
    end
  end

end
