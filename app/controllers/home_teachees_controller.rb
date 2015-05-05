class HomeTeacheesController < ApplicationController

  before_action :set_home_teachee, only: [:show, :edit, :update, :destroy]

  def index
    @home_teachees = HomeTeachee.all
  end

  def show
    @address = Address.find(params[:id])
    @histories = @home_teachee.histories.order('created_at DESC').limit(5)
  end

  def new
    @home_teachee = HomeTeachee.new
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
    params.require(:home_teachee).permit(:first_name, :last_name)
  end

  def set_home_teachee
    @home_teachee = HomeTeachee.find(params[:id])
  end

end
