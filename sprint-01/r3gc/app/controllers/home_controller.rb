class HomeController < ApplicationController
  def index
    @title = "Welcome to Gang's Clock"
  end

  def about
    @title = "About Gang's Clock"
  end

  def signin
    @title = "SignIn to Gang's Clock"
  end

end
