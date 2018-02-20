class CreatePets < ActiveRecord::Migration[5.1]
    def change
        create_table :pets do |t|
            t.references :user, null: false, unique: true, index: true
            # t.string :owner_email, null: false, unique: true
            # t.string :owner_firstname, null: false
            # t.string :owner_lastname, null: false
            # t.string :owner_school, null: false
            # t.string :owner_phone, null: false
            # t.string :owner_address, null: false
            t.string :owner_phone
            t.string :owner_address
            # t.string :owner_facebook, null: false
            # t.string :owner_linkedin
            # t.string :venmo, null:false
            t.string :species, null: false
            t.string :name, null: false
            t.integer :weight, null: false
            t.string :breed, null: false
            t.integer :age_years, null: false
            t.integer :age_months, null: false
            t.string :sex, null: false
            t.boolean :spayed, null: false
            t.boolean :housetrained, null: false
            t.string :housetrained_info
            t.boolean :chipped, null: false
            t.boolean :otherdogs, null: false
            t.string :otherdogs_info
            t.boolean :othercats, null: false
            t.string :othercats_info
            t.boolean :children, null: false
            t.string :children_info
            t.boolean :shed, null: false
            t.string :shed_info
            t.boolean :hypoallergenic, null: false
            t.string :hypoallergenic_info
            t.boolean :noise, null: false
            t.string :noise_info
            t.boolean :aggression, null: false
            t.string :aggression_info
            t.string :specialcare
            t.string :vet
            t.string :about, null: false
            t.string :instructions, null: false
            # t.string :shots, null: false
            t.timestamps null: false
        end
    end
end
