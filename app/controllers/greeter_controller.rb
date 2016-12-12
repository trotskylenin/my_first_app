class GreeterController < ApplicationController
  attr_reader :randomnames

  def initialize
    @randomnames = ["Darío", "Daniel", "Hernan", "Juan Pablo", "Sergio", "Bruno", "Minion"]
  end

  def hello
    @name = @randomnames.sample
    @time = Time.now
    @times_displayed ||= 0
    @times_displayed += 1
  end

  def goodbye
    @name = @randomnames.sample
    @time = Time.now
    @times_displayed ||= 0
    @times_displayed += 1
  end

end
