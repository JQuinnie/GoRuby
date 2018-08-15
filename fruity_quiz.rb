class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

q1 = "1) Bananas grow on trees.\n(a)True\n(b)False"
q2 = "2) Granny Smith apples are what color?\n(a)red\n(b)green\n(c)orange"
q3 = "3) What is the best season to pick strawberries?\n(a)February\n(b)July\n(c)October"

questions = [
  Question.new(q1, "a"),
  Question.new(q2, "b"),
  Question.new(q3, "b")
]

def run_test(questions)
  answer = ''
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts 'You got ' + score.to_s + '/' + questions.length().to_s + ' correct'
end

run_test(questions)
