class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    respond_to do |f|
      f.html
      f.json { render json: @companies, meta: {total: @companies.count} }
    end
  end

  def show
    @company = Company.find(params[:id])
    respond_to do |f|
      f.html
      # f.json { render json: @company, serializer: CustomCompanySerializer }
      f.json { render json: @company, serializer: Custom2CompanySerializer }
    end
  end

end
