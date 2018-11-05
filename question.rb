class Question

  def initialize
    generate_question
  end

  def ask_question
    @quest

  end

  def evaluate_response? resp
    resp == @ans
  end

  private

  def generate_question
    @num1 = rand(100)
    @num2 = rand(100)

    @quest = "What's #{@num1} + #{@num2}?"
    @ans = @num1 + @num2
  end

end