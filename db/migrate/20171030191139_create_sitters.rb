class CreateSitters < ActiveRecord::Migration[5.1]
    def change
        create_table :sitters do |t|
            t.string :user_id, null: false, unique: true, index: true
            t.string :firstname, null: false
            t.string :lastname, null: false
            t.string :address1, null: false
            t.string :address2
            t.string :city, null: false
            t.string :state, null: false
            t.string :zipcode, null: false
            t.string :phone1, null: false



            # t.string :school, null: false
            # t.string :residencetype, null: false
            # t.string :facebook, null: false
            # t.string :linkedin
            # t.string :venmo, null:false
            # t.string :locationpref, null: false
            # t.string :ownsapet, null: false
            # t.string :ownsapetdesc
            # t.string :experience, null: false
            # t.string :insurance, null: false
            # t.string :additional, null: false
            # t.timestamps null: false
        end
    end
end
