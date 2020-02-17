require 'rails_helper'
require 'factory_bot'

feature 'User can edit specific article' do
    before do
      create(:article, title: 'How to not die coding', content: 'Edited content of article')
      visit root_path
      click_on 'How to not die coding'
      click_on 'Edit'
    end

    describe 'Article displays' do
      it 'can update title' do
        fill_in 'Title', with: 'test'
        expect(page).to have_content 'test'
      end

      it 'can update content' do
        fill_in 'Content', with: 'test2'
        expect(page).to have_content 'test2'
      end
    end
  end 