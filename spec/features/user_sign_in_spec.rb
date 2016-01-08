require 'spec_helper'

feature "user signs in" do
  scenario "with valid email and password" do
    isaac = Fabricate(:user)
    sign_in(isaac)
    page.should have_content isaac.full_name
  end
end