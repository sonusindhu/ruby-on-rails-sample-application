# spec/reqeusts/admin_spec.rb

it "accesses the dashboard" do
  User.create(
    email: 'sonupnf@gmail.com',
    password: '123456',
    password_confirmation: 'secret'
  )

  visit root_path
  click_link 'Sign In'
  fill_in 'Email', with: 'sonupnf@gmail.com'
  fill_in 'Password', with: '123456'
  click_button 'Sign In'

  current_path.should eq admin_dashboard_path
  within 'h1' do
    page.should have_content 'Administration'
  end
  page.should have_content 'Manage Users'
  page.should have_content 'Manage Articles'
end