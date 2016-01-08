require 'spec_helper'

feature "User interacts with queue" do 
  scenario "user adds and reorders videos in the queue" do
    comedies = Fabricate(:category)
    monk = Fabricate(:video, title:"Monk", category_ids: [comedies.id])
    avengers = Fabricate(:video, title:"Avegers", category_ids: [comedies.id])
    iceage = Fabricate(:video, title:"Ice Age", category_ids: [comedies.id])
    sign_in
    find("a[href='/videos/#{monk.slug}']").click
    page.should have_content(monk.title)

    click_link "+ My Queue"
    page.should have_content(monk.title)

    visit video_path(monk)
    page.should_not have_content "+ My Queue"

    visit home_path
    find("a[href='/videos/#{avengers.slug}']").click
    click_link "+ My Queue"
    visit home_path
    find("a[href='/videos/#{iceage.slug}']").click
    click_link "+ My Queue"

  end
end