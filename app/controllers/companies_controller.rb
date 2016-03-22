class CompaniesController < ApplicationController

  def new
  end

  def create
      # #we check the Users table to see if there are any matches in the database to the username that was entered. Then we store it in @users
      # @company=Company.find_by_name(params[:username].strip)
      # # if the username is not entered is in the database already, then create user and render to success page
      # if @company.nil?
      #   # this creates a new user for the Users table
      #   @company = Company.new
      #   # this saves a name to the new user
      #   @company.name = params[:name]
      #   #this saves a address to the new user
      #   @company.address = params[:address]
      #   #this saves a city to the new user
      #   @company.zipcode = params[:zipcode]
      #     #this saves a state to the new user
      #   @company.companydescription = params[:companydescription]
      #     #this saves a postalcode to the new user
      #   @company.languages = params[:languages]
      #     #this saves a country to the new user
      #   @company.workenviornment = params[:workenviornment]
      #     #this saves a email to the new user
      #   @company.description = params[:description]
      #     #this saves a username to the new user
      #   @company.numberofinternships = params[:numberofinternships]
      #     #this saves a password to the new user
      #   @company.website = params[:website]
      #     #this saves a password to the new user
      #   @company.password = params[:item8]
      #   #this saves our new User in our database
      #   @company.save
      #   render 'company/confirmation'
      # else
      #   flash[:notice2] = "User ID is taken try another."
      #   render 'company/registration'
      # end
  end

  def confirmation
  end

  def registration
  end

private
  def company_params
    params.require(:company).permit(:name, :description, :address, :zipcode, :numberofinternships, :website, :contactperson, :internshipdetails, :languages, :workenviornment)
  end
end
