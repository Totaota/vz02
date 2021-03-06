class CompaniesController < ApplicationController
    
before_action :set_company, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show]
#before_action :require_same_user, except: [:edit, :update]
    def index
        @company = Company.all
    end
    def new
       @company = Company.new
    end

    def create
            #@company = current_user.company.new
            @company = Company.new(company_params)
                if @company.save
                    if params[:images]
                        params[:images].each do |i|
                            @company.photos.create(image: i)
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
       @user = User.find(params[:id]) 
    end
    def edit
        @photos = @company.photos
    end
    def update
       if @company.update(company_params)
            if params[:images]
            params[:images].each do |i|
                    @company.photos.create(image: i)
                end
            end
                    @photos = @company.photos
              redirect_to edit_company_path(@company), notice:"Modification enregistrée..."
       else
           render :edit
       end
    end
    
private
 
    def set_company
         @company = Company.find(params[:id])
    end
        
    def company_params
        params.require(:company).permit(:social_reason, :email_company, :address_company, :legal_status,
                                        :num_tva, :description, :offer, :product, :creation_date, :website,
                                        :staff, :turnover, :active)
    end
    
   # def require_same_user
    #   if current_user.id != @company.user_id
     #      flash[:danger] = "Vous n'avez pas le droit de modifier cette page"
      #     redirect_to root_path
       #end
    #end
    
end