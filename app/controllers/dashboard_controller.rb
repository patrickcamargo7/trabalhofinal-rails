class DashboardController < ApplicationController
  def index 
    @purchased = Ticket
                   .where('user_id', current_user.id)
                   .count

    @sum = Ticket
             .where('tickets.user_id', current_user.id)
             .joins(:raffle)
             .sum(:value)


    return render 'index', :locals => { :purchased => @purchased, :sum => @sum }
  end 
end 