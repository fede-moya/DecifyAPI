module Rest
  module V1
    class SessionsController < ApplicationController
    	skip_before_action :verify_authenticity_token

    	def new
	    	command = AuthenticateUser.call(params[:email], params[:password])
			  if command.success?
			    render json: { auth_token: command.result }
				else
			    render json: { error: command.errors }, status: :unauthorized
			  end
    	end

      def destroy
        
      end

    end
  end
end