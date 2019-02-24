class ClientsController < ApplicationController
  before_action :set_client, only: [:edit, :update, :destroy, :show]

  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new client_params
    if @client.save
      redirect_to @client, notice: t(".success")
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update client_params
      redirect_to @client, notice: t(".success")
    else
      render :new
    end
  end

  def destroy
    if @client.destroy
      redirect_to clients_path, notice: t(".success")
    else
      redirect_to @client, notice: t(".error")
    end
  end

  private

  def set_client
    @client = Client.find params[:id]
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :business_name, :phone_number, :email)
  end
end
