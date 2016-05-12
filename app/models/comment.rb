class Comment < ActiveRecord::Base
  belongs_to :algo

  validates_presence_of :commenter
  validates_presence_of :body

  def sanitized
    comment = self.body
    words = {'fuck' => 'frick', 'shit'=>'poop', 'bitch'=>'big ol meanie', 'Fuck' => 'Frick', 'Shit'=>'Poop', 'Bitch'=>'Biznatch'}
    words.each do |swear, clean|
      comment.gsub!(swear, clean)
    end
    return comment
  end

end
