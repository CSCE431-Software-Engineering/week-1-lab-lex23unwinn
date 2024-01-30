# location: spec/feature/integration_spec.rb

#integration test

require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'with valid inputs' do 
        visit new_book_path
        fill_in "book[title]", with: 'Meditations'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end
end

