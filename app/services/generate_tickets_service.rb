class GenerateTicketsService 
  def initialize(raffle)
    @raffle = raffle
  end

  def generate


    (@raffle.type.initial_number..@raffle.type.amount).step(@raffle.type.step).each do |i|
        @raffle.tickets.create(number: i)
    end
  end
end