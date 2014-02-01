Given(/^I am a user$/) do
  @user = User.create! email: "some@example.com", password: "letmein", password_confirmation: "letmein"
end