class EntriesController < ApplicationController
	before_action :require_permission, only: [:edit, :destroy]
	
	def index
		@user = current_user.id
		@entries = current_user.entries.all
		@entries_by_date = @entries.group_by(&:date)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

	def show
		@entry = Entry.find(params[:id])
	end
	
  def create
		@entry = current_user.entries.create(entry_params)
		@entry.date = Date.today
		@entry.save
		redirect_to entries_path
  end

  def new
		@entry = Entry.new
  end

   def edit
		require_permission
		@entry = Entry.find(params[:id])
  end

  def update
		@entry = current_user.entries.find(params[:id])

		if @entry.update(entry_params)
      redirect_to entry_path
   else
      render 'edit'
    end
  end
	
	def destroy
			require_permission
			@entry = current_user.entries.find(params[:id])
			@entry.destroy

			redirect_to entries_path
	end
	
	def require_permission
  	if current_user != Entry.find(params[:id]).user
   	 redirect_to root_path
  	end
	end
	
private
	def entry_params
		params.require(:entry).permit(:subject, :details, :date)
  end
	
end
