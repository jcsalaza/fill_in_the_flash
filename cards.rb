class Card
  attr_reader :id, :question, :answer

  def initialize(args={})
    @id = args.fetch(:id)
    @question = args.fetch(:question)
    @answer = args.fetch(:answer)
  end

end
