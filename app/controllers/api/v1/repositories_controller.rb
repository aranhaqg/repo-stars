module Api
	module V1	
    class RepositoriesController < ApplicationController

      def show           
        user_login = params[:id] 
        
        job = SyncReposJob.perform_now(user_login)

        render json: {message: :ok, items: job}, status: :ok
      end
    end
  end
end