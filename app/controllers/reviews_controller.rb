class ReviewsController < ApplicationController
    before_action :find_product

    def create
        @review = Review.new(params.require(:review).permit(:rating, :body))
        @review.product = @product
        if @review.save
          redirect_to product_path(@product), notice: "review created!"
        else
          flash[:error] = "Invalid Review"
          @reviews = @product.reviews.order(created_at: :desc)
          render '/products/show', status: 303
        #   redirect_to product_path(@product) #or 
        end
    end

    def destroy
        @review = Review.find params[:id]
        @review.destroy
        redirect_to product_path(@product), notice: "Review deleted"
    end

    private 

    def find_product
        @product= Product.find params[:product_id]
    end
end
