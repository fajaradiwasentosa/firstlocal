class TestimonialsController < ApplicationController
  def index;
  end

  def create
    asdasdasdasdasdsa
    @testimonial = Testimonial.find(params[:id])
    @new_testimonial = Testimonial.new(params[:testmonial])
    if @new_testimonial.save
      respond_to :js
    end
  end
end
