class CountryController < ApplicationController
  def all_states
    @states = State.all
  end

  def top_five_pop
  end

  def top_five_area
  end
end
