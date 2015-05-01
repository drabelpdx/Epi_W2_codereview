require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary path', {:type => :feature}) do
  it('adds a word to our dictionary') do
    visit('/')
    fill_in('name', :with => 'apple')
    click_button('Add New Word')
    expect(page).to have_content('apple')
  end
end
