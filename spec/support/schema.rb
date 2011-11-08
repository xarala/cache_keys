ActiveRecord::Schema.define do
  self.verbose = true

  create_table :posts, :force => true do |t|
    t.string :text
    t.timestamps
  end

end