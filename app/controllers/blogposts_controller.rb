class BlogpostsController < ApplicationController
  layout 'blogposts'

  def index
    @data=Blogpost.all.order('created_at desc')
  end

  def add
    @blogpost=Blogpost.new
    @genres=Bloggenre.all
    if request.post? then
      @blogpost=Blogpost.create blogposts_params
      redirect_to '/blogposts'
  end

  def edit
  end

  def delete
  end
end
