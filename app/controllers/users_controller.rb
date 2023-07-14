class UsersController < ApplicationController
  
    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end
    
    #From the previous lesson, thi is probably a better way
    # class UsersController < ApplicationController
    #     def show
    #       user = User.find_by(id: session[:user_id])
    #       if user
    #         render json: user
    #       else
    #         render json: { error: "Not authorized" }, status: :unauthorized
    #       end
    #     end
    #   end

end
