class CreatePets < ActiveRecord::Migration[5.1]
    def change
        create_table :pets do |t|
            t.string :owner_email, null: false, unique: true
            t.string :owner_firstname, null: false
            t.string :owner_lastname, null: false
            t.string :owner_school, null: false
            t.string :owner_phone, null: false
            t.string :owner_address, null: false
            t.string :owner_facebook, null: false
            t.string :owner_linkedin
            t.string :venmo, null:false
            t.string :name, null: false
            t.string :species, null: false
            t.string :breed, null: false
            t.string :description, null: false
            t.float :age, null: false
            t.float :weight, null: false
            t.string :shed, null: false
            t.string :housetrained, null: false
            t.string :hypoallergenic, null: false
            t.string :noise, null: false
            t.string :spayed, null: false
            t.string :aggression, null: false
            t.string :otherpets, null: false
            t.string :children, null: false
            t.string :shots, null: false
            t.string :specialcare, null: false
            t.string :vet_name
            t.string :vet_phone
            t.string :owner_insurance, null: false
            t.string :additional, null: false
            t.timestamps null: false
        end
    end
end
