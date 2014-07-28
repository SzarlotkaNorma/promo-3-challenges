class CreatePosts < ActiveRecord::Migration
  def change
    # TODO: your code here to create the posts table

    #name:string
    #source_url:string
    #created_at:datetime

    create_table :posts do |t|
      t.string    :name
      t.string    :source_url
      t.datetime  :created_at
    end
  end
end
