# coding: utf-8

class SheltersController < ApplicationController
	def index
		@shelters = Shelter.all
	end

	def search
	end

	def show
		@shelter = Shelter.find(params[:id])
	end
	
	def new
		@shelter = Shelter.new
	end
	
	def edit
		@shelter = Shelter.find(params[:id])
	end
	
	def create
		@shelter = Shelter.new(params[:shelter])
		if @shelter.save
			redirect_to @shelter, notice: "名前を登録しました"
		else
			render "new"
		end
	end
	
	def update
		@shelter = Shelter.find(params[:id])
		@shelter.assign_attributes(params[:shelter])
		if @shelter.save
			redirect_to @shelter, notice: "名前を更新しました"
		else
			render "edit"
		end
	end
	
	def destroy
		@shelter = Shelter.find(params[:id])
		@shelter.destroy
		redirect_to :shelters, notice: "名前の削除しました"
	end
end
