require_relative '../lib/book'
require_relative '../lib/item'
require_relative '../lib/label'

describe 'Book' do
  it 'should be able to be archived' do
    book = Book.new('Pengiun', 'good', '2022-01-01')
    expect(book.can_be_archived?).to be false
  end

  it 'should be instance of Book' do
    book = Book.new('Pengiun', 'good', '2022-01-01')
    expect(book).to be_an_instance_of Book
  end
end

describe 'add_book' do
  it 'should be able to add book' do
    book = Book.new('Pengiun', 'good', '2022-01-01')
    expect(book.publisher).to eq 'Pengiun'
    expect(book.cover_state).to eq 'good'
    expect(book.publish_date).to eq '2022-01-01'
  end
end

describe 'add_label' do
  it 'should be able to add label' do
    book = Book.new('Pengiun', 'good', '2022-01-01')
    book.add_label(Label.new('Gift', 'red'))
    expect(book.label.title).to eq 'Gift'
    expect(book.label.color).to eq 'red'
  end
end

describe 'move_to_archive' do
  it 'should be able to move to archive' do
    book = Book.new('Pengiun', 'good', '2008-01-01')
    book.move_to_archive
    expect(book.archived).to be true
  end
end
