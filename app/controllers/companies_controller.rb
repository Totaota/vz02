class CompaniesController < ApplicationController
    
before_action :set_company, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show]
before_action :require_same_user, except: [:edit, :update]
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
                    if params[:images]
                        params[:images].each do |i|
                            @room.photos.create(image: i)
                        end
                    end
                    @photos = @company.photos
                    redirect_to edit_company_path(@company), notice:"Votre entreprise a été ajoutée avec succès"
                else
                    render :new
                end
    end
    
    def show
       @photos = @company.photos 
    end
    def edit
        @photos = @room.photos
    end
    def update
       if @company.update(company_params)
            if params[:images]
            params[:images].each do |i|
                    @room.photos.create(image: i)
                end
            end
                    @photos = @company.photos
              redirect to edit_company_path(@company), notice:"Modification enregistrée..."
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
    
    def require_same_user
       if current_user.id != @room.user_id
           flash[:danger] = "Vous n'avez pas le droit de modifier cette page"
           redirect_to root_path
       end
    end
    
end