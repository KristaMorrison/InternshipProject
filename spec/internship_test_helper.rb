  def register_admin
    visit "/admins/new"
    fill_in 'First name', with: 'Bob'
    fill_in 'Last name', with: 'Boberson'
    fill_in 'Email', with: 'Bob@recruit.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Password confirmation', with: 'Password'
    click_button 'Sign up'

  end
