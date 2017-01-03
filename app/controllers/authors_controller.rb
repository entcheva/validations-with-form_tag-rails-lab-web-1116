class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end

  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :edit
    end

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
