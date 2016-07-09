require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word path', {:type => :feature}) do
  it('takes word and adds to list of words') do
    visit('/')
    click_link('Add Word')
    fill_in('name', :with => 'dropsy')
    click_button('Add Word')
    click_link('Home')
    click_link('See Words')
    expect(page).to have_content('dropsy')
    click_link('dropsy')
    click_link('Add a new definition')
    fill_in('meaning', :with=> 'archaic term for edema')
    fill_in('part_of_speech', :with=> 'noun')
    click_button('Add Definition')
    expect(page).to have_content('Success!')
    click_link('Home')
    click_link('See Words')
    click_link('dropsy')
    expect(page).to have_content('archaic term for edema')

  end
end
