class GenerateTicketsJob < ApplicationJob
  queue_as :default

  def perform(raffle)
    GenerateTicketsService.new(raffle).generate
  end
end
