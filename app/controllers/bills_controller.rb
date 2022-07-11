class BillsController < ApplicationController
    def new
    end

    def result
        p params
        @amount = params[:amount].to_f
        @tax = params[:tax].to_f
        @tip = params[:tip].to_f
        @number_of_people = params[:number_of_people].to_i
        @result = @amount * (@tax / 100 + 1) * (@tip / 100 + 1) / @number_of_people

    end
end
