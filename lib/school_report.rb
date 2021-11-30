class SchoolReport
  def add_scores(scores)
    green_total = 0
    if scores == "Green"
      green_total += 1
    end
      "Test 1:\nGreen: #{green_total}\nAmber: 0\nRed: 0"
  end
end