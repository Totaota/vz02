class CompaniesController < ApplicationController
    
before_action :set_company, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show]
    def index
        @companies = current_user.companies
    end
    def new
       @company = Company.new
    end

    def create
            #@company = current_user.companies.create(company_params)
            @company = Company.new(company_params)
                if @company.save
                    redirect_to @company, notice:"Votre entreprise a été ajoutée avec succès"
                else
                    render :new
                end
    end
    
    def update
       if @company.update(company_params)
              redirect to @company, notice:"Modification enregistrée..."
       else
           render :edit
       end
    end
    
private
 
    def set_company
         @company = Company.find(params[:id])
    end
        
    def company_params
        params.require(:company).permit(:social_reason, :email_company, :address_company,:tel_company, :legal_status,
                                        :num_tva, :rcs, :ape_code, :description, :offer, :product, :creation_date, :website,
                                        :staff, :turnover, :active)
    end
    
end