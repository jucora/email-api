class UsersController < ApplicationController
    def create
        newUser = User.create(user_params)
        if newUser.save
            render json: {
                status: :created,
                newUser: newUser,
            }
        else
            render json:{
                status: false,
                errors: newUser    .errors.full_messages
            }
        end
    end

    private

    def user_params
        params.require(:newUser).permit(:name, :email, :phone, :subscribe)
    end
end
