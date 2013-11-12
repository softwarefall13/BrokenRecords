require 'spec_helper'
   
describe PostsController do
  describe 'showing entries on index page' do

    it 'should render entries on index page' do
      get :index
      expect{response}.to render_template('index')
    end

    it 'should call model method for all' do
      fake_results = [mock('Josh'), mock('Jeff')]
      Post.should_receive(:all).and_return(fake_results)
      get :index
    end

  end
end
