feature 'User can edit specific article' do
    before do
      create(:article, title: 'How to develop good coding habits', content: 'Edited content of article')
      create(:article, title: 'How to not die coding', content: 'Edited content of article')
      create(:article, title: 'How to code in your dreams', content: 'Edited content of article')

      visit root_path
      click_on 'Edit content'
    end

    context 'Article displays' do
      it 'title' do
        expect(page).to have_content 'Edit content'
      end

      it 'content' do
        expect(page).to have_content 'Edited content of article'
      end
    end

    context 'content can be edited' do
        it 'user can click edit button' do
            click_on 'Edit article'
            expect(page).to have_content 'Save and publish'
        end

        it 'user can change content' do
            click_on 'Edit article'
            fill_in 'Article', with: 'whatever'
            click_on 'Save and publish'
            expect(page).to have_content 'whatever'
        end
    end
  end 