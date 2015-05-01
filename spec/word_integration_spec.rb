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

describe('the dictionary path', {:type => :feature}) do
  it('adds a definition to our word') do
    visit('/word/1')
    fill_in('name', :with => 'a fruit')
    click_button('Add New Definition')
    expect(page).to have_content('a fruit')
  end
end
