class MembersController < ApplicationController
  def new
    @member = Member.new
    @house = House.find(params[:house_id])
  end

  def create
    @member = Member.create(member_params)
    @house = House.find(params[:house_id])

    if @member.save
      flash[:notice] = "Member added successfully"
      redirect_to @house
    else
      flash[:notice] = "Name can be blank"
      render :new
    end
  end

  private
  def member_params
    params.require(:member).permit(:first_name, :last_name).merge(house: House.find(params[:house_id]))
  end
end
