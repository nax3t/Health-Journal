class EntriesController < ApplicationController
def index
		@entries = Entry.all
  end

  def create
		@entry = Entry.create(entry_params)
		redirect_to entries_path
  end

  def new
		@entry = Entry.new
  end

   def edit
		 @entry = Entry.find(params[:id])
  end

  def update
		@entry = Entry.find(params[:id])

		if @entry.update(entry_params)
      redirect_to entry_path
   else
      render 'edit'
    end
  end
	
private
	def entry_params
		params.require(:entry).permit(:event, :details)
  end
	
end
