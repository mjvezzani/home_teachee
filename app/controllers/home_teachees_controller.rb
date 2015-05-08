class HomeTeacheesController < ApplicationController

  before_action :set_home_teachee, only: [:show, :edit, :update, :destroy]

  def index
    @home_teachees = HomeTeachee.includes(:address, :contact_info, :issues).all
  end

  def show
  end

  def new
    @home_teachee = HomeTeachee.new
    @home_teachee.build_contact_info
    @home_teachee.build_address
  end

  def create
    @home_teachee = HomeTeachee.new(home_teachee_params)

    if @home_teachee.save
      flash[:success] = 'New Home Teachee Saved'
      redirect_to home_teachee_path(@home_teachee)
    else
      flash[:error] = 'Something went wrong, please try again'
      render :new
    end
  end

  def edit

  end

  def update
    if @home_teachee.update(home_teachee_params)
      flash[:success] = 'Home Teachee successfully updated'
      redirect_to home_teachee_path(@home_teachee)
    else
      flash[:error] = 'Something went wrong, please try again'
      render :edit
    end
  end

  def destroy

  end

  private

  def home_teachee_params
    params.require(:home_teachee).permit(:first_name, :last_name,
                                         address_attributes: [:street_number, :city, :state, :zipcode],
                                         contact_info_attributes: [:email, :phone1, :phone2])
  end

  def set_home_teachee
    @home_teachee = HomeTeachee.find(params[:id])
  end

end
