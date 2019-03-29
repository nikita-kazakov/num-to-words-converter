class Number
  attr_accessor :result
  def initialize(num)
    @result = ""
    @digits_array =[]
    @num = num
  end


  ONES = {
      #:zero     => 0,
      :one      => 1,
      :two      => 2,
      :three    => 3,
      :four     => 4,
      :five     => 5,
      :six      => 6,
      :seven    => 7,
      :eight    => 8,
      :nine     => 9
  }

  TEENS = {
      #:zero     => 0,
      :eleven      => 11,
      :twelve      => 12,
      :thirteen    => 13,
      :fourteen    => 14,
      :fifteen     => 15,
      :sixteen     => 16,
      :seveteen    => 17,
      :eighteen    => 18,
      :nineteen    => 19
  }

  TENS = {
      #:zero     => 0,
      :twenty      => 2,
      :thirty      => 3,
      :forty       => 4,
      :fifty       => 5,
      :sixty       => 6,
      :seventy     => 7,
      :eighty      => 8,
      :ninety      => 9,
  }



  def num_to_text

    digits_array
    case @digits_array.size

    when 1
      ones
    when 2
      tens
      ones
    when 2
      tens
      ones
    when 3
      hundreds
      tens
      ones
    when 4
      thousands
      hundreds
      tens
      ones
    end

    final_view
  end

  def digits_array
    @digits_array = @num.to_s.chars.each.map {|num|num.to_i }
  end

  def ones
    add_to_result(ONES.key(@digits_array.last).to_s)
  end

  def tens

    index = @digits_array[-2]
    add_to_result(TENS.key(index).to_s) if index != 0

  end

  def hundreds
    index = @digits_array[-3]
    add_to_result(ONES.key(index).to_s)  if index != 0
    add_to_result("hundred") if index != 0
  end

  def thousands
    index = @digits_array[-4]
    add_to_result(ONES.key(index).to_s)  if index != 0
    add_to_result("thousand") if index != 0
  end

  def add_to_result(str)
    @result << "#{str}-"
  end

  def final_view
    @result.gsub(/[-]/, " ")
  end

end


number = Number.new(264)
p number.num_to_text #two-hundred-sixty-four

