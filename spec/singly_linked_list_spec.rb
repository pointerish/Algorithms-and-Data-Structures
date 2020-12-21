require_relative '../SinglyLinkedList/singly_linked_list'

describe SinglyLinkedList do

  let(:sll) { SinglyLinkedList.new }

  describe '#add' do
    it 'adds new Node\'s value correctly to the head when list is empty' do
      sll.add(1)
      expect(sll.head.value).to eql(1)
    end
    it 'sets the next_node to nil when next_node is not specified' do
      sll.add(1)
      expect(sll.head.next_node).to be_nil
    end
  end

  describe '#get' do
    it 'adds new Node\'s value correctly to the head when list is empty' do
      sll.add(1)
      expect(sll.head.value).to eql(1)
    end
    it 'sets the next_node to nil when next_node is not specified' do
      sll.add(1)
      expect(sll.head.next_node).to be_nil
    end
  end
end