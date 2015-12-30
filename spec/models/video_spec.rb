require 'spec_helper'

describe Video do

  it "saves itself" do 
    video = Video.create(title:"New Video", description:"some description")
    expect(Video.first.id).to eql(video.id)
  end 

  it { should have_many(:categories) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "search_by_title" do

    it "returns an empty array when there's no match" do
      iceage = Video.create(title:"Ice Age", description:"some description")
      avengers = Video.create(title:"Avengers", description:"some description")
      expect(Video.search_by_title("lion")).to eq([])
    end

    it "returns all matching objects of the search params" do
      iceage = Video.create(title:"Ice Age", description:"some description")
      avengers = Video.create(title:"Avengers", description:"some description")
      expect(Video.search_by_title("Ice Age")).to eq([iceage])
    end

    it "returns possbile matching objects of partial search title" do
      iceage = Video.create(title:"Ice Age", description:"some description")
      avengers = Video.create(title:"Avengers", description:"some description")
      expect(Video.search_by_title("venger")).to eq([avengers])
    end

    it "returns all matches ordered by created_at" do
      iceage = Video.create(title:"Ice Ave", description:"some description", created_at:1.day.ago)
      avengers = Video.create(title:"Avengers", description:"some description")
      expect(Video.search_by_title("Ave")).to eq([avengers, iceage])
    end

    it "returns an empty array when search param is empty" do
      iceage = Video.create(title:"Ice Age", description:"some description")
      avengers = Video.create(title:"Avengers", description:"some description")
      expect(Video.search_by_title("")).to eq([])
    end

  end

  # describe "#recent videos" do
  #   it "returns the first 6 most recent videos" do
  #     iceage = Video.create(title:"Ice Age", description:"some description", created_at:1.day.ago)
  #     avengers = Video.create(title:"Avengers", description:"some description", created_at: 2.days.ago)
  #     lion = Video.create(title:"Lion King", description:"some description")
  #     robin = Video.create(title:"Meet The Robinsons", description:"some description", created_at: 3.days.ago)
  #     expect(Video.recent_videos).to eq([lion, iceage, avengers])
  #   end
  # end

end