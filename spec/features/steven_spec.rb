require 'rails_helper'

describe 'category index page' do

  it 'shows the category list' do
    visit '/categories'
    expect(page).to have_selector('#categories_table')
  end
  
end