require_relative '../advancedRSpec'

# RSpec.describe Student do
#   let(:student) { Student.new("Noah") }

#   describe '#average_grade' do
#     it 'calculate the average grade' do
#       student.grades = [90, 80, 70]
#       expect(student.average_grade).to eq(80)
#     end
    
#     it 'returns 0 when there are no grades' do
#       expect(student.average_grade).to eq(0)
#     end

#     it 'uses a stub to simulate grades' do
#       allow(student).to receive(:grades).and_return([100, 100, 100])
#       expect(student.average_grade).to eq(100)
#     end
#   end
# end


RSpec.describe Library do
  let(:library) { Library.new }

  describe '#books' do
    it 'returns a list of books' do
      allow(library).to receive(:fetch_books_from_api).and_return(["Stubbed Book 1", "Stubbed Book 2"])
      # @books = fetch_books_from_api # = ["Stubbed Book 1", "Stubbed Book 2"]
      expect(library.books).to eq(["Stubbed Book 1", "Stubbed Book 2"])
    end
  end
end
