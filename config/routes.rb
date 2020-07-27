Rails.application.routes.draw do

  get("/", { :controller => "calculations", :action => "square" })

  get("/square/new", { :controller => "calculations", :action => "square" })
  get("/square/results", { :controller => "calculations", :action => "square_results" })
  
  get("/square_root/new", { :controller => "calculations", :action => "square_root" })
  get("/square_root/results", { :controller => "calculations", :action => "square_root_results" })

  get("/payment/new", { :controller => "calculations", :action => "payment" })
  get("/payment/results", { :controller => "calculations", :action => "payment_results" })

  get("/random/new", { :controller => "calculations", :action => "random" })
  get("/random/results", { :controller => "calculations", :action => "random_results" })
  
  get("/:count/:dice", { :controller => "dice", :action => "roll_em"})
end
