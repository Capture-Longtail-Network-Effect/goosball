require 'spec_helper'

feature 'View Member List' do
    scenario 'Display list of members' do
        visit members_path
        expect(page).to have_content 'List of Members'
    end
end 
