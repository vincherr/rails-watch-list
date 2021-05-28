class BookmarksController < ApplicationController
 before_action :set_list, only: [:new, :create]



  def new
    @bookmark = Bookmark.new
  end

  def create

  end

  def detroy
  end

  private
   def set_list
    @list = List.find(params[:list_id])
  end

end
