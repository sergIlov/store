# frozen_string_literal: true

require "rails_helper"

describe Book do
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
