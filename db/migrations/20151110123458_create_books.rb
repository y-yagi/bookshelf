Lotus::Model.migration do
  change do
    create_table :books do
      primary_key :id
      foreign_key :author_id, :authors, on_delete: :cascade, null: false

      column :name, String,   null: false
      column :price, Integer, null: false
      column :code,  String,  null: false, unique: true, size: 128

      check { price > 0 }
    end
  end
end
