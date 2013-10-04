require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'AJT' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About Us' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
  end

  describe "FAQ page" do
    before { visit faq_path }
    let(:heading)    { 'FAQ' }
    let(:page_title) { 'FAQ' }

    it_should_behave_like "all static pages"
  end

  it "should have the header links on the layout" do
    visit root_path
    click_link "Sign up"
    expect(page).to have_title(full_title('Sign up'))
  end

  it "should have the footer links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "FAQ"
    expect(page).to have_title(full_title('FAQ'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
  end
end
