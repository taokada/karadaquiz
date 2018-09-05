class HomeController < ApplicationController


  before_action:set_current_user


  def top

  end

  def about
  end

  def blog
  end

  def portfolio
  end

  def contact
    if @current_user==nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/users/login")
    end
  end



  def post
    @post = Post.new(name: params[:post_name],message: params[:post_content])
    if @post.save
      redirect_to("/home/contact", flash:{notice: 'メッセージを受け取りました。'})
    else
      redirect_to("/home/contact", flash:{notice: 'もう一度送信してください。'})

    end
  end


end
