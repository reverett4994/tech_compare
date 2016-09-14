class ContactsController < ApplicationController

	def new
		@contact=Contact.new
	end

	def create
		@contact=Contact.new(params[:contact])
		@contact.request=request
		if @contact.deliver
			flash.now[:alert]=nil
		else
			flash.now[:alert]='Cannot send email'
			render :new
		end
	end
end
