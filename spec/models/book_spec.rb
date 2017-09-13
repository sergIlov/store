# frozen_string_literal: true

require "rails_helper"

describe Book, type: :model  do
  it { should belong_to :publisher }
  it { should have_many :authors }
  it { should have_many :authorable_authors }
  it { should have_many :genres }
  it { should have_many :genreble_genres }
  it { should have_many :single_sorts }

  describe "assign name_size_prime" do
    context do "when name size is prime"
               before :each do
                 @book = FactoryGirl.build(:book, name: "prime")
               end

               it "true after save" do
                 @book.save
                 expect(@book.name_size_prime).to be_truthy
               end
    end

    context do "when name size is not prime"
               before :each do
                 @book = FactoryGirl.build(:book, name: "not prime")
               end

               it "true after save" do
                 @book.save
                 expect(@book.name_size_prime).to be_falsey
               end
    end
  end
end
