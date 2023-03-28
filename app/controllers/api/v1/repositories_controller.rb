module Api
	module V1	
    class RepositoriesController < ApplicationController

      def show 
        if params[:id] && !params[:id].empty?     
          user_login = params[:id] 
          
          jid = SyncReposJob.perform_later(user_login).provider_job_id

          render json: {message: :ok, job_id: jid}, status: :ok
        else
          render json: {error: 'User login missing'}, status: :bad_request
        end
      end
    end
  end
end