class CommentsController < ApplicationController
    def create
            @post = Post.find(params[:post_id])
            @comment = @post.comments.build(params[:comment].permit[:post_id])
            @comment.save
            redirect_to @post
    end
end
