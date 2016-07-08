require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word path', {:type => :feature}) do
  it('takes word and adds to list of words') do
    visit('/')
    click_link('Add New Word')
    fill_in('name', :with => 'Happy Motors')
    click_button('Add Dealership')
    click_link('Home')
    click_link('See Dealership List')
    expect(page).to have_content('Happy Motors')
  end
end
