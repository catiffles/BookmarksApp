class BookmarksController < ApplicationController

  before_action(:find_bookmark, only: [:show, :edit, :update, :destroy])

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bookmark.update_attributes(bookmark_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to action: :index
  end

  private

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :favorite)
  end

end