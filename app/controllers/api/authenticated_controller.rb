class Api::AuthenticatedController < ApplicationController
  before_action :set_authenticated, only [:show, :update, :destroy]

  def index
    render json: Authenticated.all.order(created_at: :desc)
  end

  def show
    render json: @authenticated
  end

  def create
    authenticated = Authenticated.create(authenticated_params)
    if authenticated.save
      render json: authenticated
      
    else
      render json: { errors: authenticated.errors.full_messages.join(',') }, status: 418
    end
  end

  def update
    if @authenticated.update(authenticated_params)
      render json: @authenticated 
    else 
      render json: { errors: @authenticated.errors.full_messages.join(',')}, status: 418
    end
  end

  def destroy
    @authenticated.destroy
  end

  private
    def set_authenticated
      @authenticated = Authenticated.find(params[:id])
    end 

    def authenticated_params
      params.require(:authenticated).permit(:name, :description, :price, :author, :version, :logo, :category, :featured )
    end
end
