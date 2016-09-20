require 'rails_helper'

RSpec.describe "answers/show", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :question_id => 2,
      :content => "Content",
      :vote_count => 3,
      :user_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
