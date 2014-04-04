describe User do
  it { should validate_presence_of :name }
  it { should have_many :aspects }


  context 'shared_priorities' do
    it 'should show a user and their spouses shared priorities' do
      u1 = User.create({ name: 'joe'})
      u2 = User.create({ name: 'jill'})
      u1.update({ user_id: u2.id})
      u2.update({ user_id: u1.id})
      a1 = Aspect.create({ name: 'important stuff', user_id: u1.id})
      a2 = Aspect.create({ name: 'important stuff', user_id: u2.id})
      a3 = Aspect.create({ name: 'stuff I think is important but my spouse does not', user_id: u1.id})
      a4 = Aspect.create({ name: 'No! my stuf is important!', user_id: u2.id})

      u1.shared_priorities.should eq [a1, a2]

    end
  end
end
