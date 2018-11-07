class BoardController < ApplicationController
  def index
    @list = Post.all
  end

  def show
    @post=Post.find(params[:id])
    
  end

  def new
    
  end

  def create
    
    
    new = Post.new(title: params[:title], editor: params[:editor], content: params[:content])
    new.save
    
    redirect_to '/'
    
  end

  def edit
    
    @edit_p = Post.find(params[:id])
    
  end

  def update
    params[:id]
   
    
   
   
    update_p = Post.find(params[:id]) 
    update_p.title= params[:title]
    update_p.title = "aaaaaa"
    update_p.editor = params[:editor]
    update_p.content = params[:content]
    
    update_p.save
    
    redirect_to "/board/show/#{update_p.id}"
    
  end

  def destroy
    des_p = Post.find(params[:id])
    
    des_p.destroy
    
    redirect_to '/'
    
  end
end
