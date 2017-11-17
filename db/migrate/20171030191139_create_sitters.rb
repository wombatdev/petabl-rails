class CreateSitters < ActiveRecord::Migration[5.1]
    def change
        create_table :sitters do |t|
            t.string :email, null: false, unique: true
            t.string :firstname, null: false
            t.string :lastname, null: false
            t.string :school, null: false
            t.string :phone, null: false
            t.string :address, null: false
            t.string :residencetype, null: false
            t.string :facebook, null: false
            t.string :linkedin
            t.string :venmo, null:false
            t.string :locationpref, null: false
            t.string :ownsapet, null: false
            t.string :ownsapetdesc
            t.string :experience, null: false
            t.string :insurance, null: false
            t.string :additional, null: false
            t.timestamps null: false
        end
    end
end
