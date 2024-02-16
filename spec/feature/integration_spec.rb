# location: spec/feature/integration_spec.rb

#integration test

require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'with valid inputs' do 
        visit new_book_path
        fill_in "book[title]", with: 'Meditations'
        fill_in "book[author]", with: 'Marcus Aurelius'
        fill_in "book[price]", with: '19.99'
        fill_in "book[published_date]", with: '2002-06-26'
        click_on 'Create Book'
        save_and_open_page
        visit books_path
        expect(page).to have_content('Meditations', wait: 5)
        expect(page).to have_content('Marcus Aurelius', wait: 5)
        expect(page).to have_content("19.99", wait: 5)
        expect(page).to have_content("2002-06-26", wait: 5)
    end

    scenario 'without valid inputs' do
        visit new_book_path
        click_on 'Create Book'
        expect(page).to have_content('Title can\'t be blank')
        expect(page).to have_content('Author can\'t be blank')
        expect(page).to have_content('Price can\'t be blank')
        expect(page).to have_content('Published date can\'t be blank')
    end
end

