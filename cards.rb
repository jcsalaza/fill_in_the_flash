class Card
  def initialize(args={})
    @id = args.fetch(:id)
    @question = args.fetch(:question)
    @answer = args.fetch(:answer)
  end

end
