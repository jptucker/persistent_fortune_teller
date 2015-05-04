Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  # VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "signs" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
  get("/id/:the_id", { :controller => "zodiacs", :action => "id" })
  get("/zodiacs/new", {:controller => "zodiacs", :action => "new_form"})
  get("/create_zodiac", {:controller => "zodiacs", :action => "create_row"})

  get("/random/:first_num/:second_num", { :controller => "fortunes", :action => "two_numbers" })

end
