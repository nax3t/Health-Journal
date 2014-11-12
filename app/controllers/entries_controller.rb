class EntriesController < ApplicationController
	def index
		@user = current_user.id
		@entries = current_user.entries.all
  end

	def show
		@user = current_user.id
		@entry = Entry.find(params[:id])
	end
	
  def create
		@entry = current_user.entries.create(entry_params)
		redirect_to entries_path
  end

  def new
		@user = current_user.id
		@entry = Entry.new
  end

   def edit
		 @user = current_user.id
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
		@user = current_user.id
		@entry = Entry.find(params[:id])
		@entry.destroy

		redirect_to entries_path
	end
	
private
	def entry_params
		params.require(:entry).permit(:subject, :details, :date)
  end
	
end
