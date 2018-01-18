require 'rails_helper'

describe "shared/_navbar.html.erb" do

  context "logged out" do
    let(:user) { create:user }

    it "page has log in and sign up links" do
    visit root_url
    expect(page).to have_link('Log In', href: new_user_session_path)
    expect(page).to have_link('Sign Up', href: new_user_registration_path)
    end
  end

  context "without profile" do
    before { sign_in user }
    let(:user) { create:user }

    it "renders email" do
      render
      expect(rendered).to have_content user.email
    end
  end

  context "with profile" do
    before { sign_in user }
    let(:profile) { build :profile }
    let(:user) { create :user, profile: profile }

    it "renders first and last name" do
      render
      expect(rendered).to have_content profile.first_name
      expect(rendered).to have_content profile.last_name
    end
  end
end
