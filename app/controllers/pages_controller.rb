class PagesController < ApplicationController
  def home
    @today = Date.today
  end

  def team
    @members = ["Bob", "Boris", "Seb"]
  end

  def join_us
    render plain: "Send us a email"
  end

end
