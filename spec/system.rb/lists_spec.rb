require 'rails_helper'

describe '投稿のテスト' do
# let! : let!による事前評価
  let!(:list) {create(:list,title:'hoge',body:'body')}
  describe "トップ画面(top_path)のテスト" do
    before do 
      visit top_path
    end
    context '表示の確認' do
      it 'トップ画面(top_path)に一覧ページへのリンクが表示されているか' do
        expect(page).to have_content "ここはTopページです"
      end
      it 'top_pathが"/top"であるか' do
        expct(current_path).to eq('/top')
      end
    end
  end
end