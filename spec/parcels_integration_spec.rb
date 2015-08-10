require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Calculating shipping cost and package volume based on user input', {:type => :feature}) do

  it('Accepts user input, creates parcel object, spits out parcel data to results page') do
    visit('/')
    fill_in("height", :with => '2')
    fill_in("width", :with => '3')
    fill_in("length", :with => '4')
    fill_in("weight", :with => '12')
    choose('first')
    click_button("Go!")
    expect(page).to have_content("Volume: 24")
  end

end  #comment some superficial tag
