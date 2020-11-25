class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(user_params)
    #params[:name, :email, :message]
    if @contact.save
      ContactMailer.general_message(@contact).deliver
      render thanks
    else
      render new
    end
  end

  private
  def user_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def thanks
  end
end
