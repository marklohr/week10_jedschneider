class ProjectsController < ApplicationController
	def show
		@project = Project.find params[:id]
	end


	def new
		@project = Project.new
	end


	def create
		@project = Project.create que_params
		redirect_to root_path
	end


	def edit
		@project = Project.find params[:id]
	end


	def update
		@project = Project.find params[:id]
		@project.update_attributes project_params
		redirect_to root_path
	end	


	def destroy
	@project = Project.find params[:id]
    @project.delete
    redirect_to root_path
	end
	

private
	def project_params
		params.require(:project).permit(:name)
	end

end