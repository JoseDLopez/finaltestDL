class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
    @new_company = Company.new
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @claim = Claim.new
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    if current_user.company == nil
      @company = Company.new(company_params)
      @company.users << current_user
      respond_to do |format|
        if @company.save
          format.html { redirect_to @company, notice: 'Company was successfully created.' }
          format.json { render :show, status: :created, location: @company }
          format.js
        else
          format.html { render :new }
          format.json { render json: @company.errors, status: :unprocessable_entity }
          format.js
        end
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @users = @company.users
    @users.each do |user|
      user.company_id = nil
      user.save
    end
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name)
    end
end
