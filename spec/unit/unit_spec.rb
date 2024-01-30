#unit test for Title attribute

#location: spec/unit/unit_spec.rb

#create_table :books do |t|
#   t.string :title
#   t.string :author
#   t.price  :number
#   t.date   :date

#  t.timestamps

require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do 
        described_class.new(title: 'Meditations', author: 'Marcus C.H.A.D. Aurelius', price: 19.99, date: Date.new(2002, 6, 15))
    end

    it 'is valid with valid attributes' do #validates :title, presence: true 
        expect(subject).to be_valid 
    end

    it 'is not valid without a title' do  #rainy day scenario, trying to save a book without a title
        subject.title = nil 
        expect(subject).not_to be_valid 
    end

    it 'is not valid wihout an author' do 
        subject.author = nil 
        expect(subject).not_to be_valid 
    end

    it 'is not valid wihout a price' do 
        subject.price = nil 
        expect(subject).not_to be_valid 
    end

    it 'is not valid wihout a date' do 
        subject.date = nil 
        expect(subject).not_to be_valid 
    end

end 

