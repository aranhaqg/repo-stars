module Api
	module V1	
    class RepositoriesController < ApplicationController

        def show           
          
          user_login = params[:id] 
          
          repo_list = SearchRepositoryService.call(user_login)
          

          render json: {message: :ok, items: repo_list}, status: :ok
        end

    end

  end
end