# spec/features/user_can_see_list_of_articles_spec.rb hello hello
require "rails_helper"

feature 'List articles on index page' do
  context 'with articles in db' do #db = database
    before do
      create(:article, title: 'A breaking news item')
      create(:article, title: 'Some breaking action')
      
      visit root_path
    end

    it 'displays first article title' do
      expect(page).to have_content 'A breaking news item'
    end

    it 'displays second article title' do
      expect(page).to have_content 'Some breaking action'
    end
  end
end