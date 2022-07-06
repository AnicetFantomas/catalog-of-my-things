require_relative '../lib/item'
require_relative '../lib/label'
require_relative '../lib/book'

describe 'Label' do
  it 'should create a label object' do
    label = Label.new('Gift', 'red')
    expect(label).to be_an_instance_of Label
  end
end

describe 'add_item' do
  it 'should add an item to a label' do
    label = Label.new('Gift', 'red')
    book = Book.new('Pengiun', 'good', '2022-01-01')
    label.add_item(book)
    expect(label.items).to eq [book]
  end

  it 'should add multiple items to a label' do
    label = Label.new('Gift', 'red')
    book = Book.new('Pengiun', 'good', '2022-01-01')
    book2 = Book.new('Spring', 'good', '2022-01-01')
    label.add_item(book)
    label.add_item(book2)
    expect(label.items).to eq [book, book2]
  end
end
