class JavascriptsController < ApplicationController
  def dynamic_localities
  @localities = Locality.find(:all)
end
end
