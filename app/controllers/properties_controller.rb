class PropertiesController < ApplicationController

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(params.require(:property).permit(:title,
                            :property_location, :area, :property_type, :rooms,
                            :maximum_guests, :maximum_rent, :minimum_rent,
                            :daily_rate, :photo, :description, :usage_rules))
    if @property.save
      flash[:message] = 'Imóvel cadastrado com sucesso'
      redirect_to property_url(@property)
    else
      render :new
    end
  end



end
