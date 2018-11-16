class Api::V1::UsersController < ApplicationController

    respont_to :json

    def show
        @user = User.find(params[:id])
        respond_with @user
        
    end

end
