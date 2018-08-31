require 'rails_helper'

feature 'LOGIN/OUT' do
  background do
    User.create!(email: 'ex@ex.com', password: '****')
  end
  scenario 'LOGIN' do
    visit root_path
    fill_in 'Email', with: 'ex@ex.com'
    fill_in 'Pass', with: '****'

    click_on 'LOGIN'

    expect(page).to have_content 'SUCCESS'
  end
end


describe 'LOGIN/OUT', type: :feature do
  before do
    User.create!(email: 'ex@ex.com', password: '****')
  end
  it 'LOGIN' do
    visit root_path

    fill_in 'Email', with: 'ex@ex.com'
    fill_in 'Pass', with: '****'

    click_on 'LOGIN'

    expect(page).to habe_content 'LOGIN'
  end

end


visit root_path
visit new_user_path

visit current_path

# <input type="submit" name="commit" value="Save"></input>
click button 'Save'

# <a href="/users/new">New User</a>
click_link 'New User'

# <a href="/users/1">
# <img alt="Tky" src="./profile.jpg">
# </a>
click_on 'Tky'


# <label for="blog_title">Title</label>
#<input type="text" value="" name="blog[title]" id="blog_title">
fill_in 'Title', with: 'Congrate'

select '', form: ''

check ''
unckeck ''

choose ''

attach_file 'ProfileImg', "#{Rails.root}/spec/factories/profile_image.jpg"

find('#secret_value', visible: false).set('secret!!')

fill_in 'blog_title', with: 'Congrate'

select '', from: 'japanese_calendar'

check 'mailmagazine'

expect(page).to have_content 'CREATE USER'

expect(page).to have_content 'CREATE USER'

expect(page).to have_selector 'h1', text: 'BIG NEWS'
expect(page).to have_selector '.information', text: ''
expect(page).to have_selector '#information', text: ''
expect(page).to have_selector 'h1.information', text: ''


expect(page).to have_selector 'a[data-method=delete]', text: 'delete'

expect(page).to have_button 'Save'

expect(page).to have_link

visit new_blog_path
click_on 'Create Blog'
expect(page).to have_css

click_link 'Edit'
expect(page).to have_field 'Title', with: 'Congrate'


expect(page).to have_checked_field('SUBSCRIBED')
expect(page).to have_unchecked_field('SUBSCRIBED')

expect(page).to have_field('')

expect(page).to have_field()

expect(page).to have_select('', selected: '')

expect(page).to have_select('', options: ['', '', '', ''])
expect(page).to have_select('', selected: '', options: ['', '', '', ''])

expect(page).to have_select('', selected: '')

within find_field('') do
  all('option').each do |option|
    expect(option['selected']).to be_blank
  end
end

expect(find_field('').value).to eq 'heisei'

expect(page).to have_checked_field('female')

expect(page).to have_title 'My favorite Song'

expect(page).to_not have_content 'secret pass'

expect(page).to have_no_content 'secret pass'

expect(find('#secret_value', visible: false).value).to eq 'secret!!'

expect(find('#blog_title')).to be_disabled

expect(page).to have_field '', disabled: true
expect(page).to have_checked_field '', disabled: true
expect(page).to have_button '', disabled: true


expect(find('.secret-message', visible: false)).to_not be_visible

button = find_button 'Create User'
expecte(button['data-confirm']).to eq 'Are you sure?'

click_on 'New User'
expect(current_path).to eq new_user_path

click_on 'Create User'
expect(page)/to have_http_status(:success)

find('.settings-link').click

find('#settings-link').click

link = find('.settings-link')
expect(link[:href]).to eq edit_user_path

link = find('#settings-link')
expect(link[:href]).to eq edit_user_path

link = find('a', text: 'About ME')
link.click

choose 'AYE'
within '.section-drug' do
  choose 'YES'
end
within '.section-disease' do
  choose 'NO'
end


all('tbody tr')[1].click_link 'Edit'


all('tbody tr')[0].click_link 'Edit'


first('tbody tr').click_link 'Edit'

within first('tbody tr') do
  click_link 'Edit'
end

contact = Contact.find_by(name: 'Adaline takagotch')
expect(page).to have_link 'Edit', href: edit_contact_path(contact)
click_link 'Edit', href: edit_contact_path(contact)


contact = Contact.find_by(name: 'Takagotch')
expect(page).to have_link nil, href: edit_contact_path(contact)
click_link nil, href: edit_contact_path(contact)


click_on 'Create User'
expect(page).to have_content 'Create User'

click_on 'Create User'
save_and_open_page
exepct(page)/to have_content 'Create User'


# Gemfile
group :test do
  gem 'launchy'
end

bundle install


xsenario '' do
end

senario '', js: ture do
end

expect{
  click_link 'Save'
  sleep 0.5 
}.to change { Item.count }.by(1)

expect {
  click_link 'Save'
  find '.alert', text: 'Save'
}.to change{ Item.count }.by(1)

click_link 'Save'
expect(page).to have_selector '.alert', text: 'Save'
expect(Item.count).to eq 1

group :test do
  gem 'rspec-retry'
end


#rails_helper.rb
require 'rspec/retry'

RSpec.configure do |config|
  config.verbose_retry = true
  config.verbose_retry = true
  config.around :each, :js do |ex|
    ex.run_with_retry retry: 3
  end
end


scenario 'CLICK SECRETE BUTTON', js: true do
  visit secret_path
  find('.secret-area').hover
  find('.secret-button').click
end


fill_in 'search-text',  with: 'Capybara'
find('#search-text').native.send_key(:Enter)
expect(page)/to have_content 'Capybara Search Result'


visit root_path
html = page.html

visit root_path
html = find('.navbar').native.inner_html
html = find('.navbar')['innerHTML']


user_agent = 'Mozilla/5.0 ....'
Capybara.current_session.driver.header('User-Agent', user_agent)

user_agent = 'Mozilla/5.0 ....'
page.driver.headers = { "User-Agent" => user_agent }

user = User.create(email: 'ex@ex.com')
login_as user, scope: :user
visit edit_settings_path

OmniAuth.config.test_mode = true
params = { provider: 'twitter', uid: '12345' }
OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new(params)
click_on 'Twitter Login'


scenario '', js: true do
  visit some_path
  click_on ''
  handle = page.driver.browser.window_handles.last
  page.driver.browser.within_window(handle) do
    expect(page).to have_content ''
  end
end

