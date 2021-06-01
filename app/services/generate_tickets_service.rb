class GenerateTicketsService 
  def initialize(raffle)
    @raffle = raffle
  end

  def generate


    (1..1000).each do |i|
        @raffle.tickets.create(number: i)
    end
  end
end