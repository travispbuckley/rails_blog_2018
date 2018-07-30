class ArticlesController < ApplicationController

  	def new
  		# do stuff here
  	end

  	def create
  		@article = Article.new(article_params)

  		@article.save
  		redirect_to @article
  	end

  	def show

  		
  	end

  # Private method used to create strong_parameters to help prevent malicious attempts
  # of passing in extra data in a form post.
  private
	def article_params
		params.require(:article).permit(:title, :text)
	end

end
