class CalculationsController < ApplicationController

  def square
    render({ :template => "calculations_templates/square.html.erb" })
  end
  
  def square_results
    @number = params.fetch("number")
    @square = @number.to_f ** 2
    render({ :template => "calculations_templates/square_results.html.erb" })
  end
  
  def square_root
    
    render({ :template => "calculations_templates/square_root.html.erb" })
  end
  
  def square_root_results
    
    @number = params.fetch("user_number")
    @square_root = @number.to_f ** (0.5)
    render({ :template => "calculations_templates/square_root_results.html.erb" })
  end
  
  def payment
    
    render({ :template => "calculations_templates/payment.html.erb" })
  end
  
  def payment_results
    
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f

    rate = @apr / 100 / 12
    nper = @years * 12

    numerator = rate * @principal
    denominator = 1 - (1 + rate)**-nper

    @payment = numerator / denominator
    
    render({ :template => "calculations_templates/payment_results.html.erb" })
  end
  
  def random
    
    render({ :template => "calculations_templates/random.html.erb" })
  end
  
  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    
    render({ :template => "calculations_templates/random_results.html.erb" })
  end


end
