require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    return @name.reverse
  end

  get '/square/:number' do
    return " #{params[:number].to_i*params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @array = []
    @number.times do
        @array << @phrase
    end
    return "#{@array}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @word = []
    # @word << params[:word1]
    # @word << params[:word2]
    # @word << params[:word3]
    # @word << params[:word4]
    # @word << params[:word5]

    @word = []
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    return "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do
    status 200
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      @num3 = @num1 + @num2
      "#{@num3}"
    elsif @operation.downcase == "subtract"
      @num3 = @num2 - @num1
      "#{@num3}"
    elsif @operation.downcase == "multiply"
      @num3 = @num2 * @num1
      "#{@num3}"
    elsif @operation.downcase == "divide"
      @num3 = @num1/@num2
      "#{@num3}"
    end

  end
end
