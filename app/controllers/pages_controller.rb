class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @pets = policy_scope(Pet)
  end
end
