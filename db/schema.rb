

ActiveRecord::Schema.define(version: 2021_03_23_064821) do
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.text "content"
  end

end
